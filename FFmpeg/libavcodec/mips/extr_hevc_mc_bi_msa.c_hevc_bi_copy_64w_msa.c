
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int v8i16 ;
typedef int v16u8 ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BI_RND_CLIP4_MAX_SATU (int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ) ;
 int ILVRL_B2_SH (TYPE_1__,TYPE_1__,int ,int ) ;
 int LD_SB4 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SH8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int ST_UB4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void hevc_bi_copy_64w_msa(uint8_t *src0_ptr,
                                 int32_t src_stride,
                                 int16_t *src1_ptr,
                                 int32_t src2_stride,
                                 uint8_t *dst,
                                 int32_t dst_stride,
                                 int32_t height)
{
    uint32_t loop_cnt;
    v16u8 out0, out1, out2, out3;
    v16i8 src0, src1, src2, src3;
    v16i8 zero = { 0 };
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    for (loop_cnt = height; loop_cnt--;) {
        LD_SB4(src0_ptr, 16, src0, src1, src2, src3);
        src0_ptr += src_stride;
        LD_SH8(src1_ptr, 8, in0, in1, in2, in3, in4, in5, in6, in7);
        src1_ptr += src2_stride;

        ILVRL_B2_SH(zero, src0, dst0, dst1);
        ILVRL_B2_SH(zero, src1, dst2, dst3);
        ILVRL_B2_SH(zero, src2, dst4, dst5);
        ILVRL_B2_SH(zero, src3, dst6, dst7);
        SLLI_4V(dst0, dst1, dst2, dst3, 6);
        SLLI_4V(dst4, dst5, dst6, dst7, 6);
        HEVC_BI_RND_CLIP4_MAX_SATU(in0, in1, in2, in3, dst0, dst1, dst2, dst3,
                                   7, dst0, dst1, dst2, dst3);
        HEVC_BI_RND_CLIP4_MAX_SATU(in4, in5, in6, in7, dst4, dst5, dst6, dst7,
                                   7, dst4, dst5, dst6, dst7);
        PCKEV_B2_UB(dst1, dst0, dst3, dst2, out0, out1);
        PCKEV_B2_UB(dst5, dst4, dst7, dst6, out2, out3);

        ST_UB4(out0, out1, out2, out3, dst, 16);
        dst += dst_stride;
    }
}
