
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFMAX (float,float) ;

void ff_set_min_dist_lsf(float *lsf, double min_spacing, int size)
{
    int i;
    float prev = 0.0;
    for (i = 0; i < size; i++)
        prev = lsf[i] = FFMAX(lsf[i], prev + min_spacing);
}
