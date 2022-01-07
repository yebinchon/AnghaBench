
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _cnputs (char*,int) ;

void
cnputc_unbuffered(char c)
{
 _cnputs(&c, 1);
}
