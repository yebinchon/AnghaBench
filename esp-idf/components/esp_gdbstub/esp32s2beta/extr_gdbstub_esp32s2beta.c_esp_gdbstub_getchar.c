
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int REG_READ (int ) ;
 int UART_FIFO_AHB_REG (int ) ;
 int UART_NUM ;
 int UART_RXFIFO_CNT ;
 int UART_STATUS_REG (int ) ;

int esp_gdbstub_getchar()
{
    while (REG_GET_FIELD(UART_STATUS_REG(UART_NUM), UART_RXFIFO_CNT) == 0) {
        ;
    }
    return REG_READ(UART_FIFO_AHB_REG(UART_NUM));
}
