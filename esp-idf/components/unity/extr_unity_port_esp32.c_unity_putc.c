
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_tx_one_char (int) ;

void unity_putc(int c)
{
    if (c == '\n') {
        uart_tx_one_char('\r');
        uart_tx_one_char('\n');
    } else if (c == '\r') {
    } else {
        uart_tx_one_char(c);
    }
}
