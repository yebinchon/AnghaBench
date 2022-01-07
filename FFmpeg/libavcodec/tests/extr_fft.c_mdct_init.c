
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTContext ;


 int * av_mdct_init (int,int,double) ;
 int ff_mdct_init (int *,int,int,double) ;

__attribute__((used)) static inline void mdct_init(FFTContext **s, int nbits, int inverse, double scale)
{



    ff_mdct_init(*s, nbits, inverse, scale);

}
