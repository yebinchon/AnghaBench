
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void lsf_interpolate(int16_t *out, int16_t *in1,
                            int16_t *in2, int16_t coef,
                            int size)
{
    int invcoef = 16384 - coef, i;

    for (i = 0; i < size; i++)
        out[i] = (coef * in1[i] + invcoef * in2[i] + 8192) >> 14;
}
