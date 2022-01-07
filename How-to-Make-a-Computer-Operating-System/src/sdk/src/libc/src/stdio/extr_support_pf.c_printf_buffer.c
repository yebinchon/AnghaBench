
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int supcon_putc (char) ;

int printf_buffer(int i)
{
 int j;
 if ( i <= 0 ) return 0;
 for ( j = 0; j < i; j++) supcon_putc(' ');
 return 0;
}
