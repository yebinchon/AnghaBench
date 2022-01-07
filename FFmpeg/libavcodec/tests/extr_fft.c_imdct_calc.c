
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FFTContext {int (* imdct_calc ) (struct FFTContext*,int *,int const*) ;} ;
typedef int FFTSample ;


 int av_imdct_calc (struct FFTContext*,int *,int const*) ;
 int stub1 (struct FFTContext*,int *,int const*) ;

__attribute__((used)) static inline void imdct_calc(struct FFTContext *s, FFTSample *output, const FFTSample *input)
{



    s->imdct_calc(s, output, input);

}
