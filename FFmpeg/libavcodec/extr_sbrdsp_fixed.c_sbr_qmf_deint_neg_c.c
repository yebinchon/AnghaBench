
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sbr_qmf_deint_neg_c(int *v, const int *src)
{
    int i;
    for (i = 0; i < 32; i++) {
        v[ i] = ( src[63 - 2*i ] + 0x10) >> 5;
        v[63 - i] = (-src[63 - 2*i - 1] + 0x10) >> 5;
    }
}
