
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTContext ;


 int av_fft_end (int *) ;
 int ff_fft_end (int *) ;

__attribute__((used)) static inline void fft_end(FFTContext *s)
{



    ff_fft_end(s);

}
