
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uart_port_t ;
struct TYPE_2__ {int rx_buffer_full_flg; int uart_num; scalar_t__ rx_stash_len; int rx_buffered_len; int rx_data_buf; int rx_ring_buf; } ;
typedef scalar_t__ BaseType_t ;


 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 TYPE_1__** p_uart_obj ;
 scalar_t__ pdTRUE ;
 int uart_enable_rx_intr (int ) ;
 int * uart_spinlock ;
 scalar_t__ xRingbufferSend (int ,int ,scalar_t__,int) ;

__attribute__((used)) static bool uart_check_buf_full(uart_port_t uart_num)
{
    if (p_uart_obj[uart_num]->rx_buffer_full_flg) {
        BaseType_t res = xRingbufferSend(p_uart_obj[uart_num]->rx_ring_buf, p_uart_obj[uart_num]->rx_data_buf, p_uart_obj[uart_num]->rx_stash_len, 1);
        if (res == pdTRUE) {
            UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
            p_uart_obj[uart_num]->rx_buffered_len += p_uart_obj[uart_num]->rx_stash_len;
            p_uart_obj[uart_num]->rx_buffer_full_flg = 0;
            UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
            uart_enable_rx_intr(p_uart_obj[uart_num]->uart_num);
            return 1;
        }
    }
    return 0;
}
