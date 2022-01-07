
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float avpriv_scalarproduct_float_c (float const*,float const*,int) ;

__attribute__((used)) static void convolve(float *tgt, const float *src, int len, int n)
{
    for (; n >= 0; n--)
        tgt[n] = avpriv_scalarproduct_float_c(src, src - n, len);

}
