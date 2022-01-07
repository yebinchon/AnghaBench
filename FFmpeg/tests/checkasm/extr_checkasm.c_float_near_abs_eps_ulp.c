
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ float_near_abs_eps (float,float,float) ;
 scalar_t__ float_near_ulp (float,float,unsigned int) ;

int float_near_abs_eps_ulp(float a, float b, float eps, unsigned max_ulp)
{
    return float_near_ulp(a, b, max_ulp) || float_near_abs_eps(a, b, eps);
}
