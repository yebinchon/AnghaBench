
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int DPADD_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ;
 int HEVC_BI_RND_CLIP2 (int,int,int,int,int,int,int) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int ,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int LD_SH2 (int *,int ,int,int) ;
 int SPLATI_H2_SH (int,int ,int,int,int) ;
 int ST_D2 (int,int ,int,int *,int ) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 int __msa_ldi_h (int) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_bi_4t_8x2_msa(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    v8i16 filt0, filt1;
    v16i8 src0, src1;
    v8i16 in0, in1;
    v16i8 mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    v16i8 mask1, vec0, vec1, vec2, vec3;
    v8i16 dst0, dst1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= 1;

    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    LD_SB2(src0_ptr, src_stride, src0, src1);
    LD_SH2(src1_ptr, src2_stride, in0, in1);
    XORI_B2_128_SB(src0, src1);

    dst0 = const_vec;
    dst1 = const_vec;
    VSHF_B2_SB(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
    VSHF_B2_SB(src0, src0, src1, src1, mask1, mask1, vec2, vec3);
    DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt0, filt1, filt1, dst0, dst1,
                 dst0, dst1);
    HEVC_BI_RND_CLIP2(in0, in1, dst0, dst1, 7, dst0, dst1);

    dst0 = (v8i16) __msa_pckev_b((v16i8) dst1, (v16i8) dst0);
    ST_D2(dst0, 0, 1, dst, dst_stride);
}
