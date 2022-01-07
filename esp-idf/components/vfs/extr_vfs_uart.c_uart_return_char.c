
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peek_char; } ;


 int NONE ;
 int assert (int) ;
 TYPE_1__** s_ctx ;

__attribute__((used)) static void uart_return_char(int fd, int c)
{
    assert(s_ctx[fd]->peek_char == NONE);
    s_ctx[fd]->peek_char = c;
}
