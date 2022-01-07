
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_putc (char) ;

void
serial_putc( char c )
{
    uart_putc(c);
}
