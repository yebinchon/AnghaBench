
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFEBUR128State ;


 int ebur128_gated_loudness (int **,int,double*) ;

int ff_ebur128_loudness_global(FFEBUR128State * st, double *out)
{
    return ebur128_gated_loudness(&st, 1, out);
}
