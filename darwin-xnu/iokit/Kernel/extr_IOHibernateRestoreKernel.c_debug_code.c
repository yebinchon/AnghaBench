
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int gIOHibernateDebugFlags ;
 int kIOHibernateDebugRestoreLogs ;
 int uart_putc (char) ;
 int uart_puthex (int ) ;

__attribute__((used)) static void debug_code(uint32_t code, uint64_t value)
{
    int bit;
    char c;

    if (!(kIOHibernateDebugRestoreLogs & gIOHibernateDebugFlags))
 return;

    for (bit = 24; bit >= 0; bit -= 8)
    {
 c = 0xFF & (code >> bit);
 if (c)
     uart_putc(c);
    }
    uart_putc('=');
    uart_puthex(value);
    uart_putc('\n');
    uart_putc('\r');
}
