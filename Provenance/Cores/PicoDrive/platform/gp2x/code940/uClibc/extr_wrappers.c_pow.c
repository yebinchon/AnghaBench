
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __ieee754_pow (double,double) ;

double pow(double x, double y)
{
 return __ieee754_pow(x, y);
}
