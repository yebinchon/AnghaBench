
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int ST_UB (TYPE_1__,int *) ;

__attribute__((used)) static void memset_zero_16width_msa(uint8_t *src, int32_t stride,
                                    int32_t height)
{
    int8_t cnt;
    v16u8 zero = { 0 };

    for (cnt = (height / 2); cnt--;) {
        ST_UB(zero, src);
        src += stride;
        ST_UB(zero, src);
        src += stride;
    }
}
