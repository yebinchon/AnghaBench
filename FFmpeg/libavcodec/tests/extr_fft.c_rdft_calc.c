
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* rdft_calc ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ RDFTContext ;
typedef int FFTSample ;


 int av_rdft_calc (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static inline void rdft_calc(RDFTContext *r, FFTSample *tab)
{



    r->rdft_calc(r, tab);

}
