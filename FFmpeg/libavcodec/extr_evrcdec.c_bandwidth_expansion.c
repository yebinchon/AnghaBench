
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_ORDER ;

__attribute__((used)) static void bandwidth_expansion(float *coeff, const float *inbuf, float gamma)
{
    double fac = gamma;
    int i;

    for (i = 0; i < FILTER_ORDER; i++) {
        coeff[i] = inbuf[i] * fac;
        fac *= gamma;
    }
}
