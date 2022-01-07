
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int double_near_abs_eps (double const,double const,double) ;

int double_near_abs_eps_array(const double *a, const double *b, double eps,
                              unsigned len)
{
    unsigned i;

    for (i = 0; i < len; i++) {
        if (!double_near_abs_eps(a[i], b[i], eps))
            return 0;
    }
    return 1;
}
