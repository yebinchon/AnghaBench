
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DCTContext ;


 int av_dct_end (int *) ;
 int ff_dct_end (int *) ;

__attribute__((used)) static inline void dct_end(DCTContext *d)
{



    ff_dct_end(d);

}
