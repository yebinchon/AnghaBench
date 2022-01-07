
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_port_t ;
typedef int esp_err_t ;


 int UART_TXFIFO_EMPTY_INT_ENA ;
 int uart_disable_intr_mask (int ,int ) ;

esp_err_t uart_disable_tx_intr(uart_port_t uart_num)
{
    return uart_disable_intr_mask(uart_num, UART_TXFIFO_EMPTY_INT_ENA);
}
