
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDFTContext ;


 int av_rdft_end (int *) ;
 int ff_rdft_end (int *) ;

__attribute__((used)) static inline void rdft_end(RDFTContext *r)
{



    ff_rdft_end(r);

}
