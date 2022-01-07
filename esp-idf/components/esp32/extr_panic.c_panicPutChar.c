
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int READ_PERI_REG (int ) ;
 int UART_FIFO_REG (int ) ;
 int UART_STATUS_REG (int ) ;
 int UART_TXFIFO_CNT ;
 int UART_TXFIFO_CNT_S ;
 int WRITE_PERI_REG (int ,char) ;

__attribute__((used)) static void panicPutChar(char c)
{
    while (((READ_PERI_REG(UART_STATUS_REG(CONFIG_ESP_CONSOLE_UART_NUM)) >> UART_TXFIFO_CNT_S)&UART_TXFIFO_CNT) >= 126) ;
    WRITE_PERI_REG(UART_FIFO_REG(CONFIG_ESP_CONSOLE_UART_NUM), c);
}
