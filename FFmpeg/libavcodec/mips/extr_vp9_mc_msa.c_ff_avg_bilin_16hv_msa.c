
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int DOTP_UB2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int HORIZ_2TAP_FILT_UH (int ,int ,int ,scalar_t__,int) ;
 int ILVEV_B2_UB (int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int LD_SB (int *) ;
 int LD_SB2 (int const*,int,int ,int ) ;
 int LD_SB4 (int const*,int,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int LD_UB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_AVG_ST_UB (int ,int ,scalar_t__,int *) ;
 int SAT_UH2_UH (int ,int ,int) ;
 int SRARI_H2_UH (int ,int ,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int * mc_filt_mask_arr ;
 int ** vp9_bilinear_filters_msa ;

void ff_avg_bilin_16hv_msa(uint8_t *dst, ptrdiff_t dst_stride,
                           const uint8_t *src, ptrdiff_t src_stride,
                           int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter_horiz = vp9_bilinear_filters_msa[mx - 1];
    const int8_t *filter_vert = vp9_bilinear_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt_hz, filt_vt, vec0, vec1, dst0, dst1, dst2, dst3;
    v8u16 hz_out0, hz_out1, hz_out2, hz_out3, tmp0, tmp1;
    v8i16 filt;

    mask = LD_SB(&mc_filt_mask_arr[0]);


    filt = LD_SH(filter_horiz);
    filt_hz = (v16u8) __msa_splati_h(filt, 0);

    filt = LD_SH(filter_vert);
    filt_vt = (v16u8) __msa_splati_h(filt, 0);

    LD_SB2(src, 8, src0, src1);
    src += src_stride;

    hz_out0 = HORIZ_2TAP_FILT_UH(src0, src0, mask, filt_hz, 7);
    hz_out2 = HORIZ_2TAP_FILT_UH(src1, src1, mask, filt_hz, 7);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src2, src4, src6);
        LD_SB4(src + 8, src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);
        LD_UB4(dst, dst_stride, dst0, dst1, dst2, dst3);

        hz_out1 = HORIZ_2TAP_FILT_UH(src0, src0, mask, filt_hz, 7);
        hz_out3 = HORIZ_2TAP_FILT_UH(src1, src1, mask, filt_hz, 7);
        ILVEV_B2_UB(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
        DOTP_UB2_UH(vec0, vec1, filt_vt, filt_vt, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_AVG_ST_UB(tmp1, tmp0, dst0, dst);
        dst += dst_stride;

        hz_out0 = HORIZ_2TAP_FILT_UH(src2, src2, mask, filt_hz, 7);
        hz_out2 = HORIZ_2TAP_FILT_UH(src3, src3, mask, filt_hz, 7);
        ILVEV_B2_UB(hz_out1, hz_out0, hz_out3, hz_out2, vec0, vec1);
        DOTP_UB2_UH(vec0, vec1, filt_vt, filt_vt, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_AVG_ST_UB(tmp1, tmp0, dst1, dst);
        dst += dst_stride;

        hz_out1 = HORIZ_2TAP_FILT_UH(src4, src4, mask, filt_hz, 7);
        hz_out3 = HORIZ_2TAP_FILT_UH(src5, src5, mask, filt_hz, 7);
        ILVEV_B2_UB(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
        DOTP_UB2_UH(vec0, vec1, filt_vt, filt_vt, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_AVG_ST_UB(tmp1, tmp0, dst2, dst);
        dst += dst_stride;

        hz_out0 = HORIZ_2TAP_FILT_UH(src6, src6, mask, filt_hz, 7);
        hz_out2 = HORIZ_2TAP_FILT_UH(src7, src7, mask, filt_hz, 7);
        ILVEV_B2_UB(hz_out1, hz_out0, hz_out3, hz_out2, vec0, vec1);
        DOTP_UB2_UH(vec0, vec1, filt_vt, filt_vt, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_AVG_ST_UB(tmp1, tmp0, dst3, dst);
        dst += dst_stride;
    }
}
