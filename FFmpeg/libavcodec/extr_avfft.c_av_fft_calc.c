
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* fft_calc ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ FFTContext ;
typedef int FFTComplex ;


 int stub1 (TYPE_1__*,int *) ;

void av_fft_calc(FFTContext *s, FFTComplex *z)
{
    s->fft_calc(s, z);
}
