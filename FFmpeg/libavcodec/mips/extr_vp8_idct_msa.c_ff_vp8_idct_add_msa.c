
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


typedef int v8i16 ;
typedef int v4i32 ;
struct TYPE_23__ {int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_15; int member_14; int member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ADD4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CLIP_SW4_0_255 (int ,int ,int ,int ) ;
 int ILVR_B4_SW (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ,int ) ;
 int ILVR_H4_SW (TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,int ,int ,int ,int ) ;
 int LD_SB4 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SH2 (int *,int,int ,int ) ;
 int SRARI_W4_SW (int ,int ,int ,int ,int) ;
 int ST_W2 (TYPE_1__,int ,int,int *,int) ;
 int TRANSPOSE4x4_SW_SW (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int UNPCK_SH_SW (int ,int ,int ) ;
 int VP8_IDCT_1D_W (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int VSHF_B2_SB (int ,int ,int ,int ,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int memset (int *,int ,int) ;

void ff_vp8_idct_add_msa(uint8_t *dst, int16_t input[16], ptrdiff_t stride)
{
    v8i16 input0, input1;
    v4i32 in0, in1, in2, in3, hz0, hz1, hz2, hz3, vt0, vt1, vt2, vt3;
    v4i32 res0, res1, res2, res3;
    v16i8 zero = { 0 };
    v16i8 pred0, pred1, pred2, pred3, dest0, dest1;
    v16i8 mask = { 0, 4, 8, 12, 16, 20, 24, 28, 0, 0, 0, 0, 0, 0, 0, 0 };


    LD_SH2(input, 8, input0, input1);
    UNPCK_SH_SW(input0, in0, in1);
    UNPCK_SH_SW(input1, in2, in3);
    VP8_IDCT_1D_W(in0, in1, in2, in3, hz0, hz1, hz2, hz3);

    TRANSPOSE4x4_SW_SW(hz0, hz1, hz2, hz3, hz0, hz1, hz2, hz3);
    VP8_IDCT_1D_W(hz0, hz1, hz2, hz3, vt0, vt1, vt2, vt3);
    SRARI_W4_SW(vt0, vt1, vt2, vt3, 3);

    TRANSPOSE4x4_SW_SW(vt0, vt1, vt2, vt3, vt0, vt1, vt2, vt3);
    LD_SB4(dst, stride, pred0, pred1, pred2, pred3);
    ILVR_B4_SW(zero, pred0, zero, pred1, zero, pred2, zero, pred3,
               res0, res1, res2, res3);
    ILVR_H4_SW(zero, res0, zero, res1, zero, res2, zero, res3,
               res0, res1, res2, res3);
    ADD4(res0, vt0, res1, vt1, res2, vt2, res3, vt3, res0, res1, res2, res3);
    CLIP_SW4_0_255(res0, res1, res2, res3);
    VSHF_B2_SB(res0, res1, res2, res3, mask, mask, dest0, dest1);
    ST_W2(dest0, 0, 1, dst, stride);
    ST_W2(dest1, 0, 1, dst + 2 * stride, stride);

    memset(input, 0, 4 * 4 * sizeof(*input));
}
