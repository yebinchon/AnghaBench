
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int float_near_ulp (float const,float const,unsigned int) ;

int float_near_ulp_array(const float *a, const float *b, unsigned max_ulp,
                         unsigned len)
{
    unsigned i;

    for (i = 0; i < len; i++) {
        if (!float_near_ulp(a[i], b[i], max_ulp))
            return 0;
    }
    return 1;
}
