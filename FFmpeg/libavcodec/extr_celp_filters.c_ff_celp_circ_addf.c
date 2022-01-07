
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void ff_celp_circ_addf(float *out, const float *in,
                       const float *lagged, int lag, float fac, int n)
{
    int k;
    for (k = 0; k < lag; k++)
        out[k] = in[k] + fac * lagged[n + k - lag];
    for (; k < n; k++)
        out[k] = in[k] + fac * lagged[ k - lag];
}
