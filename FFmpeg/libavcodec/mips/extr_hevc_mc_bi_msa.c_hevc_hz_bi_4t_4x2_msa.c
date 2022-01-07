
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v2i64 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int CLIP_SH_0_255 (int) ;
 int DPADD_SB2_SH (scalar_t__,scalar_t__,int,int,int,int) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int ,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int LD_SH2 (int *,int ,int,int) ;
 int SPLATI_H2_SH (int,int ,int,int,int) ;
 int ST_W2 (scalar_t__,int ,int,int *,int ) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 int __msa_adds_s_h (int,int) ;
 scalar_t__ __msa_ilvr_d (int ,int ) ;
 int __msa_ldi_h (int) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 int __msa_srari_h (int,int) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_bi_4t_4x2_msa(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    v8i16 filt0, filt1;
    v16i8 src0, src1, dst0, vec0, vec1;
    v8i16 in0, in1;
    v16i8 mask0 = LD_SB(&ff_hevc_mask_arr[16]);
    v16i8 mask1;
    v8i16 tmp0;
    v8i16 filter_vec, const_vec;

    src0_ptr -= 1;

    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    LD_SB2(src0_ptr, src_stride, src0, src1);
    LD_SH2(src1_ptr, src2_stride, in0, in1);
    in0 = (v8i16) __msa_ilvr_d((v2i64) in1, (v2i64) in0);
    XORI_B2_128_SB(src0, src1);
    VSHF_B2_SB(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    tmp0 = const_vec;
    DPADD_SB2_SH(vec0, vec1, filt0, filt1, tmp0, tmp0);

    tmp0 = __msa_adds_s_h(tmp0, in0);
    tmp0 = __msa_srari_h(tmp0, 7);
    CLIP_SH_0_255(tmp0);
    dst0 = __msa_pckev_b((v16i8) tmp0, (v16i8) tmp0);

    ST_W2(dst0, 0, 1, dst, dst_stride);
}
