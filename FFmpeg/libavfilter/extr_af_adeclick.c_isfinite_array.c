
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isfinite (double) ;

__attribute__((used)) static int isfinite_array(double *samples, int nb_samples)
{
    int i;

    for (i = 0; i < nb_samples; i++)
        if (!isfinite(samples[i]))
            return 0;

    return 1;
}
