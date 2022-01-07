
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int uart_putc (char) ;

__attribute__((used)) static void uart_puthex(uint64_t num)
{
    int bit;
    char c;
    bool leading = 1;

    for (bit = 60; bit >= 0; bit -= 4)
    {
 c = 0xf & (num >> bit);
 if (c)
     leading = 0;
 else if (leading && bit)
     continue;
 if (c <= 9)
     c += '0';
 else
     c+= 'a' - 10;
 uart_putc(c);
    }
}
