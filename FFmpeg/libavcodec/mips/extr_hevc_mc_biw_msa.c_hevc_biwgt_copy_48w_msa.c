
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int v8i16 ;
typedef int v4i32 ;
typedef int v16u8 ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BIW_RND_CLIP2_MAX_SATU (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int HEVC_BIW_RND_CLIP4_MAX_SATU (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVRL_B2_SH (TYPE_1__,TYPE_1__,int ,int ) ;
 int LD_SB3 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SH6 (int *,int,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B3_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SLLI_2V (int ,int ,int) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int ST_UB (int ,int *) ;
 int ST_UB2 (int ,int ,int *,int) ;
 int __msa_fill_w (int) ;

__attribute__((used)) static void hevc_biwgt_copy_48w_msa(uint8_t *src0_ptr,
                                    int32_t src_stride,
                                    int16_t *src1_ptr,
                                    int32_t src2_stride,
                                    uint8_t *dst,
                                    int32_t dst_stride,
                                    int32_t height,
                                    int32_t weight0,
                                    int32_t weight1,
                                    int32_t offset0,
                                    int32_t offset1,
                                    int32_t rnd_val)
{
    uint32_t loop_cnt;
    int32_t offset, weight;
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2;
    v16i8 zero = { 0 };
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, in0, in1, in2, in3, in4, in5;
    v4i32 offset_vec, weight_vec, rnd_vec;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    offset_vec = __msa_fill_w(offset);
    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val + 1);

    for (loop_cnt = 64; loop_cnt--;) {
        LD_SB3(src0_ptr, 16, src0, src1, src2);
        src0_ptr += src_stride;
        LD_SH6(src1_ptr, 8, in0, in1, in2, in3, in4, in5);
        src1_ptr += src2_stride;

        ILVRL_B2_SH(zero, src0, dst0, dst1);
        ILVRL_B2_SH(zero, src1, dst2, dst3);
        ILVRL_B2_SH(zero, src2, dst4, dst5);
        SLLI_4V(dst0, dst1, dst2, dst3, 6);
        SLLI_2V(dst4, dst5, 6);
        HEVC_BIW_RND_CLIP4_MAX_SATU(dst0, dst1, dst2, dst3, in0, in1, in2, in3,
                                    weight_vec, rnd_vec, offset_vec, dst0, dst1,
                                    dst2, dst3);
        HEVC_BIW_RND_CLIP2_MAX_SATU(dst4, dst5, in4, in5, weight_vec, rnd_vec,
                                    offset_vec, dst4, dst5);
        PCKEV_B3_UB(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
        ST_UB2(out0, out1, dst, 16);
        ST_UB(out2, dst + 32);
        dst += dst_stride;
    }
}
