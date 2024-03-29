# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yamajid <yamajid@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/21 23:39:22 by yamajid           #+#    #+#              #
#    Updated: 2023/05/02 13:41:44 by yamajid          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

CFLAGS = -Wall -Wextra -Werror

DBUILD = build

FILES = ft_lstnew ft_rotate_a ft_push_to_a ft_rotate_b ft_lstlast ft_reverse_rotate_b \
		push_swap_utils ft_lst_dellast ft_push_to_b ft_sort_all_args ft_push_back_to_a ft_lstaddback \
		ft_reverse_rotate_a push_swap ft_swap.a ft_push_chunks_to_b ft_sort_3_arg \
		ft_sort_4_args ft_sort_5_args duplicate ft_node_before_last ft_get_nlocation is_sorted \
		ft_check_nm_pos check_pos_on_buttom check_pos_on_top free_nodes parse ft_split

OBJS = $(addprefix $(DBUILD)/, $(FILES:=.o))

NAME = push_swap

all: $(NAME)
 
$(NAME): $(OBJS)
		$(CC) $(OBJS) -o $(NAME)

$(DBUILD)/%.o: %.c push_swap.h
		mkdir -p $(@D)
		$(CC) $(CFLAGS) -c $< -o $@

clean: 
		rm -rf $(OBJS) $(DBUILD)

fclean: clean
		rm -rf $(NAME)

re: fclean all
		
		