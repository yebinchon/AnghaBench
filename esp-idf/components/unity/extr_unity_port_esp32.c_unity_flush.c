
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int uart_tx_wait_idle (int ) ;

void unity_flush(void)
{
    uart_tx_wait_idle(CONFIG_ESP_CONSOLE_UART_NUM);
}
