
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float CELT_EMPH_COEFF ;

__attribute__((used)) static float deemphasis_c(float *y, float *x, float coeff, int len)
{
    for (int i = 0; i < len; i++)
        coeff = y[i] = x[i] + coeff*CELT_EMPH_COEFF;

    return coeff;
}
