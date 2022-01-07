
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFEBUR128State ;


 int ebur128_gated_loudness (int **,size_t,double*) ;

int ff_ebur128_loudness_global_multiple(FFEBUR128State ** sts, size_t size,
                                        double *out)
{
    return ebur128_gated_loudness(sts, size, out);
}
