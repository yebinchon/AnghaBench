
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTContext ;


 int av_freep (int **) ;
 int * av_mallocz (int) ;
 scalar_t__ ff_fft_init (int *,int,int) ;

FFTContext *av_fft_init(int nbits, int inverse)
{
    FFTContext *s = av_mallocz(sizeof(*s));

    if (s && ff_fft_init(s, nbits, inverse))
        av_freep(&s);

    return s;
}
