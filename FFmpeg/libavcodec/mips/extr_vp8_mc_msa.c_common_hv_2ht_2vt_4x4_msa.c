
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v8i16 ;
typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int DOTP_UB2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ HORIZ_2TAP_FILT_UH (int ,int ,int ,scalar_t__,int) ;
 int ILVEV_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB (int *) ;
 int LD_SB5 (int *,int,int ,int ,int ,int ,int ) ;
 scalar_t__ LD_UH (int const*) ;
 int PCKEV_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SAT_UH2_UH (scalar_t__,scalar_t__,int) ;
 int SRARI_H2_UH (scalar_t__,scalar_t__,int) ;
 int ST_W2 (scalar_t__,int ,int,int *,int) ;
 scalar_t__ __msa_pckod_d (int ,int ) ;
 scalar_t__ __msa_sldi_b (int ,int ,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hv_2ht_2vt_4x4_msa(uint8_t *src, int32_t src_stride,
                                      uint8_t *dst, int32_t dst_stride,
                                      const int8_t *filter_horiz,
                                      const int8_t *filter_vert)
{
    v16i8 src0, src1, src2, src3, src4, mask;
    v16u8 filt_vt, filt_hz, vec0, vec1, res0, res1;
    v8u16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, filt, tmp0, tmp1;

    mask = LD_SB(&mc_filt_mask_arr[16]);


    filt = LD_UH(filter_horiz);
    filt_hz = (v16u8) __msa_splati_h((v8i16) filt, 0);

    filt = LD_UH(filter_vert);
    filt_vt = (v16u8) __msa_splati_h((v8i16) filt, 0);

    LD_SB5(src, src_stride, src0, src1, src2, src3, src4);
    hz_out0 = HORIZ_2TAP_FILT_UH(src0, src1, mask, filt_hz, 7);
    hz_out2 = HORIZ_2TAP_FILT_UH(src2, src3, mask, filt_hz, 7);
    hz_out4 = HORIZ_2TAP_FILT_UH(src4, src4, mask, filt_hz, 7);
    hz_out1 = (v8u16) __msa_sldi_b((v16i8) hz_out2, (v16i8) hz_out0, 8);
    hz_out3 = (v8u16) __msa_pckod_d((v2i64) hz_out4, (v2i64) hz_out2);

    ILVEV_B2_UB(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
    DOTP_UB2_UH(vec0, vec1, filt_vt, filt_vt, tmp0, tmp1);
    SRARI_H2_UH(tmp0, tmp1, 7);
    SAT_UH2_UH(tmp0, tmp1, 7);
    PCKEV_B2_UB(tmp0, tmp0, tmp1, tmp1, res0, res1);
    ST_W2(res0, 0, 1, dst, dst_stride);
    ST_W2(res1, 0, 1, dst + 2 * dst_stride, dst_stride);
}
