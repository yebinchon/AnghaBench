
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* sum_square_butterfly_float ) (float*,float const*,float const*,int) ;} ;
struct TYPE_5__ {TYPE_1__ ac3dsp; } ;
typedef TYPE_2__ AC3EncodeContext ;


 int stub1 (float*,float const*,float const*,int) ;

__attribute__((used)) static void sum_square_butterfly(AC3EncodeContext *s, float sum[4],
                                 const float *coef0, const float *coef1,
                                 int len)
{
    s->ac3dsp.sum_square_butterfly_float(sum, coef0, coef1, len);
}
