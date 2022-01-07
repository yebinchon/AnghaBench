
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_1__ ;


typedef int v8i16 ;
struct TYPE_30__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ILVL_B4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ,int ) ;
 int ILVR_B4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ,int ) ;
 int LD_SB4 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SB8 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int ST_SH4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void hevc_copy_16w_msa(uint8_t *src, int32_t src_stride,
                              int16_t *dst, int32_t dst_stride,
                              int32_t height)
{
    v16i8 zero = { 0 };

    if (4 == height) {
        v16i8 src0, src1, src2, src3;
        v8i16 in0_r, in1_r, in2_r, in3_r;
        v8i16 in0_l, in1_l, in2_l, in3_l;

        LD_SB4(src, src_stride, src0, src1, src2, src3);

        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0_r, in1_r, in2_r, in3_r);
        ILVL_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0_l, in1_l, in2_l, in3_l);
        SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
        SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
        ST_SH4(in0_r, in1_r, in2_r, in3_r, dst, dst_stride);
        ST_SH4(in0_l, in1_l, in2_l, in3_l, (dst + 8), dst_stride);
    } else if (12 == height) {
        v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
        v16i8 src8, src9, src10, src11;
        v8i16 in0_r, in1_r, in2_r, in3_r;
        v8i16 in0_l, in1_l, in2_l, in3_l;

        LD_SB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
        src += (8 * src_stride);
        LD_SB4(src, src_stride, src8, src9, src10, src11);

        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0_r, in1_r, in2_r, in3_r);
        ILVL_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0_l, in1_l, in2_l, in3_l);
        SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
        SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
        ST_SH4(in0_r, in1_r, in2_r, in3_r, dst, dst_stride);
        ST_SH4(in0_l, in1_l, in2_l, in3_l, (dst + 8), dst_stride);
        dst += (4 * dst_stride);

        ILVR_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7,
                   in0_r, in1_r, in2_r, in3_r);
        ILVL_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7,
                   in0_l, in1_l, in2_l, in3_l);
        SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
        SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
        ST_SH4(in0_r, in1_r, in2_r, in3_r, dst, dst_stride);
        ST_SH4(in0_l, in1_l, in2_l, in3_l, (dst + 8), dst_stride);
        dst += (4 * dst_stride);

        ILVR_B4_SH(zero, src8, zero, src9, zero, src10, zero, src11,
                   in0_r, in1_r, in2_r, in3_r);
        ILVL_B4_SH(zero, src8, zero, src9, zero, src10, zero, src11,
                   in0_l, in1_l, in2_l, in3_l);
        SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
        SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
        ST_SH4(in0_r, in1_r, in2_r, in3_r, dst, dst_stride);
        ST_SH4(in0_l, in1_l, in2_l, in3_l, (dst + 8), dst_stride);
    } else if (0 == (height % 8)) {
        uint32_t loop_cnt;
        v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
        v8i16 in0_r, in1_r, in2_r, in3_r, in0_l, in1_l, in2_l, in3_l;

        for (loop_cnt = (height >> 3); loop_cnt--;) {
            LD_SB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6,
                   src7);
            src += (8 * src_stride);
            ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, in0_r,
                       in1_r, in2_r, in3_r);
            ILVL_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, in0_l,
                       in1_l, in2_l, in3_l);
            SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
            SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
            ST_SH4(in0_r, in1_r, in2_r, in3_r, dst, dst_stride);
            ST_SH4(in0_l, in1_l, in2_l, in3_l, (dst + 8), dst_stride);
            dst += (4 * dst_stride);

            ILVR_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, in0_r,
                       in1_r, in2_r, in3_r);
            ILVL_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, in0_l,
                       in1_l, in2_l, in3_l);
            SLLI_4V(in0_r, in1_r, in2_r, in3_r, 6);
            SLLI_4V(in0_l, in1_l, in2_l, in3_l, 6);
            ST_SH4(in0_r, in1_r, in2_r, in3_r, dst, dst_stride);
            ST_SH4(in0_l, in1_l, in2_l, in3_l, (dst + 8), dst_stride);
            dst += (4 * dst_stride);
        }
    }
}
