
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;


typedef int v8i16 ;
struct TYPE_22__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ILVL_B4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ,int ) ;
 int ILVR_B4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ,int ) ;
 int LD_SB4 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int ST_SH4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void hevc_copy_32w_msa(uint8_t *src, int32_t src_stride,
                              int16_t *dst, int32_t dst_stride,
                              int32_t height)
{
    uint32_t loop_cnt;
    v16i8 zero = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v8i16 in0_r, in1_r, in2_r, in3_r, in0_l, in1_l, in2_l, in3_l;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src2, src4, src6);
        LD_SB4((src + 16), src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);

        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, in0_r, in1_r,
                   in2_r, in3_r);
        ILVL_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, in0_l, in1_l,
                   in2_l, in3_l);
        SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
        SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
        ST_SH4(in0_r, in0_l, in1_r, in1_l, dst, 8);
        dst += dst_stride;
        ST_SH4(in2_r, in2_l, in3_r, in3_l, dst, 8);
        dst += dst_stride;

        ILVR_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, in0_r, in1_r,
                   in2_r, in3_r);
        ILVL_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, in0_l, in1_l,
                   in2_l, in3_l);
        SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
        SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
        ST_SH4(in0_r, in0_l, in1_r, in1_l, dst, 8);
        dst += dst_stride;
        ST_SH4(in2_r, in2_l, in3_r, in3_l, dst, 8);
        dst += dst_stride;
    }
}
