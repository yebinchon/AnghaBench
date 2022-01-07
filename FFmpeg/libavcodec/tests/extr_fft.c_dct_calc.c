
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* dct_calc ) (TYPE_1__*,int *) ;} ;
typedef int FFTSample ;
typedef TYPE_1__ DCTContext ;


 int av_dct_calc (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static inline void dct_calc(DCTContext *d, FFTSample *data)
{



    d->dct_calc(d, data);

}
