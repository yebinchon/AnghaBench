
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uart_port_t ;
struct TYPE_4__ {size_t rd; size_t wr; int* data; } ;
typedef TYPE_1__ uart_pat_rb_t ;
struct TYPE_5__ {TYPE_1__ rx_pattern_pos; } ;


 int UART_CHECK (TYPE_2__*,char*,int) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 TYPE_2__** p_uart_obj ;
 int uart_pattern_dequeue (size_t) ;
 int * uart_spinlock ;

int uart_pattern_pop_pos(uart_port_t uart_num)
{
    UART_CHECK((p_uart_obj[uart_num]), "uart driver error", (-1));
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    uart_pat_rb_t *pat_pos = &p_uart_obj[uart_num]->rx_pattern_pos;
    int pos = -1;
    if (pat_pos != ((void*)0) && pat_pos->rd != pat_pos->wr) {
        pos = pat_pos->data[pat_pos->rd];
        uart_pattern_dequeue(uart_num);
    }
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return pos;
}
