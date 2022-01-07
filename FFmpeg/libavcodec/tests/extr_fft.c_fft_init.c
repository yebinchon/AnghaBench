
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTContext ;


 int * av_fft_init (int,int) ;
 int ff_fft_init (int *,int,int) ;

__attribute__((used)) static inline void fft_init(FFTContext **s, int nbits, int inverse)
{



    ff_fft_init(*s, nbits, inverse);

}
