
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFEBUR128State ;


 int ff_ebur128_loudness_range_multiple (int **,int,double*) ;

int ff_ebur128_loudness_range(FFEBUR128State * st, double *out)
{
    return ff_ebur128_loudness_range_multiple(&st, 1, out);
}
