
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serial_putc (char) ;

void
pal_serial_putc(char c)
{
 serial_putc(c);
 if (c == '\n')
  serial_putc('\r');
}
