
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fabsf (float) ;
 int fprintf (int ,char*,float,float,float,float) ;
 int stderr ;

int float_near_abs_eps(float a, float b, float eps)
{
    float abs_diff = fabsf(a - b);
    if (abs_diff < eps)
        return 1;

    fprintf(stderr, "test failed comparing %g with %g (abs diff=%g with EPS=%g)\n", a, b, abs_diff, eps);

    return 0;
}
