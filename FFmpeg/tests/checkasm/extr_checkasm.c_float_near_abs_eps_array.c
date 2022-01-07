
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int float_near_abs_eps (float const,float const,float) ;

int float_near_abs_eps_array(const float *a, const float *b, float eps,
                         unsigned len)
{
    unsigned i;

    for (i = 0; i < len; i++) {
        if (!float_near_abs_eps(a[i], b[i], eps))
            return 0;
    }
    return 1;
}
