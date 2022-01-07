
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTContext ;


 int av_mdct_end (int *) ;
 int ff_mdct_end (int *) ;

__attribute__((used)) static inline void mdct_end(FFTContext *s)
{



    ff_mdct_end(s);

}
