
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_GET_FIELD (int ,int ) ;
 int REG_WRITE (int ,int) ;
 int UART_FIFO_AHB_REG (int ) ;
 int UART_NUM ;
 int UART_STATUS_REG (int ) ;
 int UART_TXFIFO_CNT ;

void esp_gdbstub_putchar(int c)
{
    while (REG_GET_FIELD(UART_STATUS_REG(UART_NUM), UART_TXFIFO_CNT) >= 126) {
        ;
    }
    REG_WRITE(UART_FIFO_AHB_REG(UART_NUM), c);
}
