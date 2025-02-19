
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int DOTP_UB2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int ILVL_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 int LD_UB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_ST_SB (int ,int ,int *) ;
 int SAT_UH2_UH (int ,int ,int) ;
 int SRARI_H2_UH (int ,int ,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int ** bilinear_filters_msa ;

void ff_put_vp8_bilinear16_v_msa(uint8_t *dst, ptrdiff_t dst_stride,
                                 uint8_t *src, ptrdiff_t src_stride,
                                 int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = bilinear_filters_msa[my - 1];
    v16u8 src0, src1, src2, src3, src4;
    v16u8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;


    filt = LD_SH(filter);
    filt0 = (v16u8) __msa_splati_h(filt, 0);

    src0 = LD_UB(src);
    src += src_stride;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_UB4(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);

        ILVR_B2_UB(src1, src0, src2, src1, vec0, vec2);
        ILVL_B2_UB(src1, src0, src2, src1, vec1, vec3);
        DOTP_UB2_UH(vec0, vec1, filt0, filt0, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_ST_SB(tmp0, tmp1, dst);
        dst += dst_stride;

        ILVR_B2_UB(src3, src2, src4, src3, vec4, vec6);
        ILVL_B2_UB(src3, src2, src4, src3, vec5, vec7);
        DOTP_UB2_UH(vec2, vec3, filt0, filt0, tmp2, tmp3);
        SRARI_H2_UH(tmp2, tmp3, 7);
        SAT_UH2_UH(tmp2, tmp3, 7);
        PCKEV_ST_SB(tmp2, tmp3, dst);
        dst += dst_stride;

        DOTP_UB2_UH(vec4, vec5, filt0, filt0, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_ST_SB(tmp0, tmp1, dst);
        dst += dst_stride;

        DOTP_UB2_UH(vec6, vec7, filt0, filt0, tmp2, tmp3);
        SRARI_H2_UH(tmp2, tmp3, 7);
        SAT_UH2_UH(tmp2, tmp3, 7);
        PCKEV_ST_SB(tmp2, tmp3, dst);
        dst += dst_stride;

        src0 = src4;
    }
}
