
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_1__ ;


typedef int v8i16 ;
struct TYPE_34__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ILVR_B2_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int) ;
 int ILVR_B4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int,int,int) ;
 int LD_SB2 (int *,int,TYPE_1__,TYPE_1__) ;
 int LD_SB4 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SB6 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SB8 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SLLI_4V (int,int,int,int,int) ;
 int ST_SH2 (int,int,int *,int) ;
 int ST_SH4 (int,int,int,int,int *,int) ;
 int ST_SH6 (int,int,int,int,int,int,int *,int) ;
 int ST_SH8 (int,int,int,int,int,int,int,int,int *,int) ;

__attribute__((used)) static void hevc_copy_8w_msa(uint8_t *src, int32_t src_stride,
                             int16_t *dst, int32_t dst_stride,
                             int32_t height)
{
    v16i8 zero = { 0 };

    if (2 == height) {
        v16i8 src0, src1;
        v8i16 in0, in1;

        LD_SB2(src, src_stride, src0, src1);

        ILVR_B2_SH(zero, src0, zero, src1, in0, in1);
        in0 <<= 6;
        in1 <<= 6;
        ST_SH2(in0, in1, dst, dst_stride);
    } else if (4 == height) {
        v16i8 src0, src1, src2, src3;
        v8i16 in0, in1, in2, in3;

        LD_SB4(src, src_stride, src0, src1, src2, src3);

        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0, in1, in2, in3);
        SLLI_4V(in0, in1, in2, in3, 6);
        ST_SH4(in0, in1, in2, in3, dst, dst_stride);
    } else if (6 == height) {
        v16i8 src0, src1, src2, src3, src4, src5;
        v8i16 in0, in1, in2, in3, in4, in5;

        LD_SB6(src, src_stride, src0, src1, src2, src3, src4, src5);

        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0, in1, in2, in3);
        ILVR_B2_SH(zero, src4, zero, src5, in4, in5);
        SLLI_4V(in0, in1, in2, in3, 6);
        in4 <<= 6;
        in5 <<= 6;
        ST_SH6(in0, in1, in2, in3, in4, in5, dst, dst_stride);
    } else if (0 == height % 8) {
        uint32_t loop_cnt;
        v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
        v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

        for (loop_cnt = (height >> 3); loop_cnt--;) {
            LD_SB8(src, src_stride,
                   src0, src1, src2, src3, src4, src5, src6, src7);
            src += (8 * src_stride);

            ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                       in0, in1, in2, in3);
            ILVR_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7,
                       in4, in5, in6, in7);
            SLLI_4V(in0, in1, in2, in3, 6);
            SLLI_4V(in4, in5, in6, in7, 6);
            ST_SH8(in0, in1, in2, in3, in4, in5, in6, in7, dst, dst_stride);
            dst += (8 * dst_stride);
        }
    }
}
