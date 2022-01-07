
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ v4i32 ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_2__ v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int CALC_MSE_B (TYPE_2__,TYPE_2__,TYPE_1__) ;
 int HADD_SW_S32 (TYPE_1__) ;
 int INSERT_W4_UB (int ,int ,int ,int ,TYPE_2__) ;
 int LW4 (int *,int,int ,int ,int ,int ) ;

__attribute__((used)) static uint32_t sse_4width_msa(uint8_t *src_ptr, int32_t src_stride,
                               uint8_t *ref_ptr, int32_t ref_stride,
                               int32_t height)
{
    int32_t ht_cnt;
    uint32_t sse;
    uint32_t src0, src1, src2, src3;
    uint32_t ref0, ref1, ref2, ref3;
    v16u8 src = { 0 };
    v16u8 ref = { 0 };
    v4i32 var = { 0 };

    for (ht_cnt = (height >> 2); ht_cnt--;) {
        LW4(src_ptr, src_stride, src0, src1, src2, src3);
        src_ptr += (4 * src_stride);
        LW4(ref_ptr, ref_stride, ref0, ref1, ref2, ref3);
        ref_ptr += (4 * ref_stride);

        INSERT_W4_UB(src0, src1, src2, src3, src);
        INSERT_W4_UB(ref0, ref1, ref2, ref3, ref);
        CALC_MSE_B(src, ref, var);
    }

    sse = HADD_SW_S32(var);

    return sse;
}
