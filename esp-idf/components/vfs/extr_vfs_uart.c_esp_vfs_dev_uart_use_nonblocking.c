
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_lock; int write_lock; int rx_func; int tx_func; } ;


 int _lock_acquire_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 TYPE_1__** s_ctx ;
 int uart_rx_char ;
 int uart_tx_char ;

void esp_vfs_dev_uart_use_nonblocking(int uart_num)
{
    _lock_acquire_recursive(&s_ctx[uart_num]->read_lock);
    _lock_acquire_recursive(&s_ctx[uart_num]->write_lock);
    s_ctx[uart_num]->tx_func = uart_tx_char;
    s_ctx[uart_num]->rx_func = uart_rx_char;
    _lock_release_recursive(&s_ctx[uart_num]->write_lock);
    _lock_release_recursive(&s_ctx[uart_num]->read_lock);
}
