
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uart_port_t ;


 int READ_PERI_REG (int ) ;
 int UART_STATUS_REG (int ) ;
 int UART_ST_UTX_OUT_M ;
 int UART_TXFIFO_CNT_M ;

void uart_wait_tx_idle_polling(uart_port_t uart_num)
{
    uint32_t status;
    do {
        status = READ_PERI_REG(UART_STATUS_REG(uart_num));

    } while ((status & (UART_ST_UTX_OUT_M | UART_TXFIFO_CNT_M)) != 0);
}
