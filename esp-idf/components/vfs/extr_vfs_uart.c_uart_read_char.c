
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peek_char; int (* rx_func ) (int) ;} ;


 int NONE ;
 TYPE_1__** s_ctx ;
 int stub1 (int) ;

__attribute__((used)) static int uart_read_char(int fd)
{

    if (s_ctx[fd]->peek_char != NONE) {
        int c = s_ctx[fd]->peek_char;
        s_ctx[fd]->peek_char = NONE;
        return c;
    }
    return s_ctx[fd]->rx_func(fd);
}
