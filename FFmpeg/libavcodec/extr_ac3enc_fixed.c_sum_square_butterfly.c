
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int (* sum_square_butterfly_int32 ) (int *,int const*,int const*,int) ;} ;
struct TYPE_5__ {TYPE_1__ ac3dsp; } ;
typedef TYPE_2__ AC3EncodeContext ;


 int stub1 (int *,int const*,int const*,int) ;

__attribute__((used)) static void sum_square_butterfly(AC3EncodeContext *s, int64_t sum[4],
                                 const int32_t *coef0, const int32_t *coef1,
                                 int len)
{
    s->ac3dsp.sum_square_butterfly_int32(sum, coef0, coef1, len);
}
