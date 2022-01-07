
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLong ;


 int putchar (int) ;

void
put_uLong(uLong val)
{
   putchar(val >> 24);
   putchar(val >> 16);
   putchar(val >> 8);
   putchar(val >> 0);
}
