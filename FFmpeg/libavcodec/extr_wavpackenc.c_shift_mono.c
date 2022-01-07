
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static void shift_mono(int32_t *samples, int nb_samples, int shift)
{
    int i;
    for (i = 0; i < nb_samples; i++)
        samples[i] >>= shift;
}
