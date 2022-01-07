
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void find_rms(float *src, int nb_samples, float *rms, float factor)
{
    int i;

    for (i = 0; i < nb_samples; i++)
        *rms += factor * (src[i] * src[i] - *rms);
}
