
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void pretwiddle(float *src, float *dst, int dst_len, int tab_step,
                       int step, int order0, int order1, const double * const *tabs)
{
    float *src2, *out;
    const double *tab;
    int i, j;

    out = dst;
    tab = tabs[0];
    for (i = 0; i < tab_step; i++) {
        double sum = 0;
        for (j = 0; j < order0; j++)
            sum += src[j] * tab[j * tab_step + i];
        out[i] += sum;
    }

    out = dst + dst_len - tab_step;
    tab = tabs[order0];
    src2 = src + (dst_len - tab_step) / step + 1 + order0;
    for (i = 0; i < tab_step; i++) {
        double sum = 0;
        for (j = 0; j < order1; j++)
            sum += src2[j] * tab[j * tab_step + i];
        out[i] += sum;
    }
}
