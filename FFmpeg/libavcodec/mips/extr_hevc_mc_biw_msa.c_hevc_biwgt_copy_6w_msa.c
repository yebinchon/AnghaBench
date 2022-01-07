
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int v8i16 ;
typedef int v4i32 ;
typedef int v16u8 ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BIW_RND_CLIP4_MAX_SATU (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVRL_B2_SH (TYPE_1__,TYPE_1__,int ,int ) ;
 int INSERT_D2_SB (int ,int ,TYPE_1__) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int LD_SH4 (int *,int,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,int ,int ) ;
 int SLLI_4V (int ,int ,int ,int ,int) ;
 int ST_H2 (int ,int,int,int *,int) ;
 int ST_W2 (int ,int ,int,int *,int) ;
 int __msa_fill_w (int) ;

__attribute__((used)) static void hevc_biwgt_copy_6w_msa(uint8_t *src0_ptr,
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
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 out0, out1;
    v16i8 zero = { 0 };
    v16i8 src0 = { 0 }, src1 = { 0 };
    v8i16 in0, in1, in2, in3;
    v8i16 dst0, dst1, dst2, dst3;
    v4i32 offset_vec, weight_vec, rnd_vec;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    weight_vec = __msa_fill_w(weight);
    offset_vec = __msa_fill_w(offset);
    rnd_vec = __msa_fill_w(rnd_val + 1);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD4(src0_ptr, src_stride, tp0, tp1, tp2, tp3);
        src0_ptr += (4 * src_stride);
        INSERT_D2_SB(tp0, tp1, src0);
        INSERT_D2_SB(tp2, tp3, src1);
        LD_SH4(src1_ptr, src2_stride, in0, in1, in2, in3);
        src1_ptr += (4 * src2_stride);
        ILVRL_B2_SH(zero, src0, dst0, dst1);
        ILVRL_B2_SH(zero, src1, dst2, dst3);
        SLLI_4V(dst0, dst1, dst2, dst3, 6);
        HEVC_BIW_RND_CLIP4_MAX_SATU(dst0, dst1, dst2, dst3,
                                    in0, in1, in2, in3,
                                    weight_vec, rnd_vec, offset_vec,
                                    dst0, dst1, dst2, dst3);
        PCKEV_B2_UB(dst1, dst0, dst3, dst2, out0, out1);
        ST_W2(out0, 0, 2, dst, dst_stride);
        ST_H2(out0, 2, 6, dst + 4, dst_stride);
        ST_W2(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
        ST_H2(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
        dst += (4 * dst_stride);
    }
}
