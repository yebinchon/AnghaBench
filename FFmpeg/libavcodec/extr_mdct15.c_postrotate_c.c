
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_5__ {int re; int im; } ;
typedef TYPE_1__ FFTComplex ;


 int CMUL (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void postrotate_c(FFTComplex *out, FFTComplex *in, FFTComplex *exp,
                         int *lut, ptrdiff_t len8)
{
    int i;


    for (i = 0; i < len8; i++) {
        const int i0 = len8 + i, i1 = len8 - i - 1;
        const int s0 = lut[i0], s1 = lut[i1];

        CMUL(out[i1].re, out[i0].im, in[s1].im, in[s1].re, exp[i1].im, exp[i1].re);
        CMUL(out[i0].re, out[i1].im, in[s0].im, in[s0].re, exp[i0].im, exp[i0].re);
    }
}
