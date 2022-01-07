
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void lpc_weighting(float *out, const float *lpc, float gamma, int size)
{
    int i;
    float fac = gamma;

    for (i = 0; i < size; i++) {
        out[i] = lpc[i] * fac;
        fac *= gamma;
    }
}
