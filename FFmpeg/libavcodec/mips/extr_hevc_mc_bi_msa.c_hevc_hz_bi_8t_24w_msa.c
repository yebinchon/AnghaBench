
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v2i64 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int const int16_t ;


 int CLIP_SH_0_255 (int) ;
 int DPADD_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ;
 int HEVC_BI_RND_CLIP2 (int,int,int,int,int,int,int) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int LD_SH2 (int const*,int,int,int) ;
 int PCKEV_B2_SB (int,int,int,int,scalar_t__,scalar_t__) ;
 int SD (int ,int *) ;
 int SPLATI_H4_SH (int,int ,int,int,int,int,int,int,int) ;
 int ST_SB (scalar_t__,int *) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 int __msa_adds_s_h (int,int) ;
 int __msa_copy_u_d (int ,int ) ;
 int __msa_ldi_h (int) ;
 int __msa_srari_h (int,int) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_bi_8t_24w_msa(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    uint32_t loop_cnt;
    uint64_t dst_val0;
    v16i8 src0, src1, tmp0, tmp1;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 dst0, dst1, dst2;
    v8i16 in0, in1, in2;
    v8i16 filter_vec, const_vec;
    v16i8 mask0 = LD_SB(&ff_hevc_mask_arr[0]);

    src0_ptr = src0_ptr - 3;
    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    filter_vec = LD_SH(filter);
    SPLATI_H4_SH(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    for (loop_cnt = height; loop_cnt--;) {
        LD_SB2(src0_ptr, 16, src0, src1);
        src0_ptr += src_stride;
        LD_SH2(src1_ptr, 8, in0, in1);
        in2 = LD_SH(src1_ptr + 16);
        src1_ptr += src2_stride;
        XORI_B2_128_SB(src0, src1);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        VSHF_B2_SB(src0, src0, src0, src1, mask0, mask4, vec0, vec1);
        VSHF_B2_SB(src1, src1, src0, src0, mask0, mask1, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt1, dst0,
                     dst1, dst2, dst0);
        VSHF_B2_SB(src0, src1, src1, src1, mask5, mask1, vec0, vec1);
        VSHF_B2_SB(src0, src0, src0, src1, mask2, mask6, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt1, filt1, filt2, filt2, dst1,
                     dst2, dst0, dst1);
        VSHF_B2_SB(src1, src1, src0, src0, mask2, mask3, vec0, vec1);
        VSHF_B2_SB(src0, src1, src1, src1, mask7, mask3, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt2, filt3, filt3, filt3, dst2,
                     dst0, dst1, dst2);

        HEVC_BI_RND_CLIP2(in0, in1, dst0, dst1, 7, dst0, dst1);
        dst2 = __msa_adds_s_h(dst2, in2);
        dst2 = __msa_srari_h(dst2, 7);
        CLIP_SH_0_255(dst2);

        PCKEV_B2_SB(dst1, dst0, dst2, dst2, tmp0, tmp1);
        dst_val0 = __msa_copy_u_d((v2i64) tmp1, 0);
        ST_SB(tmp0, dst);
        SD(dst_val0, dst + 16);
        dst += dst_stride;
    }
}
