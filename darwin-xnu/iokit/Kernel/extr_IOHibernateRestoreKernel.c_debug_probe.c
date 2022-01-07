
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COM1_PORT_ADDR ;
 scalar_t__ UART_SCR ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int) ;
 int uart_putc (char) ;

__attribute__((used)) static int debug_probe( void )
{

    outb(COM1_PORT_ADDR + UART_SCR, 0x5a);
    if (inb(COM1_PORT_ADDR + UART_SCR) != 0x5a) return 0;
    outb(COM1_PORT_ADDR + UART_SCR, 0xa5);
    if (inb(COM1_PORT_ADDR + UART_SCR) != 0xa5) return 0;
    uart_putc('\n');
    return 1;
}
