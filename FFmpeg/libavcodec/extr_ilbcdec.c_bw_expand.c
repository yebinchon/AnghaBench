
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void bw_expand(int16_t *out, const int16_t *in, const int16_t *coef, int length)
{
    int i;

    out[0] = in[0];
    for (i = 1; i < length; i++)
        out[i] = (coef[i] * in[i] + 16384) >> 15;
}
