
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int (* int32_to_float_fmul_scalar ) (float*,int const*,int ,int) ;} ;
typedef TYPE_1__ FmtConvertContext ;


 int stub1 (float*,int const*,int ,int) ;

__attribute__((used)) static void int32_to_float_fmul_array8_c(FmtConvertContext *c, float *dst,
                                         const int32_t *src, const float *mul,
                                         int len)
{
    int i;
    for (i = 0; i < len; i += 8)
        c->int32_to_float_fmul_scalar(&dst[i], &src[i], *mul++, 8);
}
