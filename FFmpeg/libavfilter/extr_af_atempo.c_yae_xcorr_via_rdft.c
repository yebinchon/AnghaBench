
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int re; int im; } ;
typedef int RDFTContext ;
typedef int FFTSample ;
typedef TYPE_1__ FFTComplex ;


 int av_rdft_calc (int *,int *) ;

__attribute__((used)) static void yae_xcorr_via_rdft(FFTSample *xcorr,
                               RDFTContext *complex_to_real,
                               const FFTComplex *xa,
                               const FFTComplex *xb,
                               const int window)
{
    FFTComplex *xc = (FFTComplex *)xcorr;
    int i;





    xc->re = xa->re * xb->re;
    xc->im = xa->im * xb->im;
    xa++;
    xb++;
    xc++;

    for (i = 1; i < window; i++, xa++, xb++, xc++) {
        xc->re = (xa->re * xb->re + xa->im * xb->im);
        xc->im = (xa->im * xb->re - xa->re * xb->im);
    }


    av_rdft_calc(complex_to_real, xcorr);
}
