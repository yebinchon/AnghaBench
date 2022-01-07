
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* mdct_calc ) (TYPE_1__*,int *,int const*) ;} ;
typedef int FFTSample ;
typedef TYPE_1__ FFTContext ;


 int av_mdct_calc (TYPE_1__*,int *,int const*) ;
 int stub1 (TYPE_1__*,int *,int const*) ;

__attribute__((used)) static inline void mdct_calc(FFTContext *s, FFTSample *output, const FFTSample *input)
{



    s->mdct_calc(s, output, input);

}
