
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;

int double_near_abs_eps(double a, double b, double eps)
{
    double abs_diff = fabs(a - b);

    return abs_diff < eps;
}
