
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ v4i32 ;
typedef int v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int CALC_MSE_B (int ,int ,TYPE_1__) ;
 int HADD_SW_S32 (TYPE_1__) ;
 int LD_UB (int *) ;

__attribute__((used)) static uint32_t sse_16width_msa(uint8_t *src_ptr, int32_t src_stride,
                                uint8_t *ref_ptr, int32_t ref_stride,
                                int32_t height)
{
    int32_t ht_cnt;
    uint32_t sse;
    v16u8 src, ref;
    v4i32 var = { 0 };

    for (ht_cnt = (height >> 2); ht_cnt--;) {
        src = LD_UB(src_ptr);
        src_ptr += src_stride;
        ref = LD_UB(ref_ptr);
        ref_ptr += ref_stride;
        CALC_MSE_B(src, ref, var);

        src = LD_UB(src_ptr);
        src_ptr += src_stride;
        ref = LD_UB(ref_ptr);
        ref_ptr += ref_stride;
        CALC_MSE_B(src, ref, var);

        src = LD_UB(src_ptr);
        src_ptr += src_stride;
        ref = LD_UB(ref_ptr);
        ref_ptr += ref_stride;
        CALC_MSE_B(src, ref, var);

        src = LD_UB(src_ptr);
        src_ptr += src_stride;
        ref = LD_UB(ref_ptr);
        ref_ptr += ref_stride;
        CALC_MSE_B(src, ref, var);
    }

    sse = HADD_SW_S32(var);

    return sse;
}
