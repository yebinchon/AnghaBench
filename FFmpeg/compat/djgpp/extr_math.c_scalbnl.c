
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double scalbn (long double,int) ;

long double scalbnl(long double x, int exp)
{
    return scalbn(x, exp);
}
