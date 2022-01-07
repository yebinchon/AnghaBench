
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 int stdout ;

void supcon_putc( unsigned char c )
{
 char buffer[2];
   buffer[0] = c;
   buffer[1] = 0;

 fputs((const char *)buffer,stdout);
}
