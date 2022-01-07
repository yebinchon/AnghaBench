
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
 int LD_UB2 (int const*,int,scalar_t__,scalar_t__) ;
 int LD_UB4 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_ST_SB (int ,int ,int *) ;
 int SAT_UH2_UH (int ,int ,int) ;
 int SRARI_H2_UH (int ,int ,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int ** vp9_bilinear_filters_msa ;

void ff_put_bilin_64v_msa(uint8_t *dst, ptrdiff_t dst_stride,
                          const uint8_t *src, ptrdiff_t src_stride,
                          int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = vp9_bilinear_filters_msa[my - 1];
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16u8 src11, vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v8i16 filt;


    filt = LD_SH(filter);
    filt0 = (v16u8) __msa_splati_h(filt, 0);

    LD_UB4(src, 16, src0, src3, src6, src9);
    src += src_stride;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        LD_UB2(src, src_stride, src1, src2);
        LD_UB2(src + 16, src_stride, src4, src5);
        LD_UB2(src + 32, src_stride, src7, src8);
        LD_UB2(src + 48, src_stride, src10, src11);
        src += (2 * src_stride);

        ILVR_B2_UB(src1, src0, src2, src1, vec0, vec2);
        ILVL_B2_UB(src1, src0, src2, src1, vec1, vec3);
        DOTP_UB2_UH(vec0, vec1, filt0, filt0, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_ST_SB(tmp0, tmp1, dst);

        DOTP_UB2_UH(vec2, vec3, filt0, filt0, tmp2, tmp3);
        SRARI_H2_UH(tmp2, tmp3, 7);
        SAT_UH2_UH(tmp2, tmp3, 7);
        PCKEV_ST_SB(tmp2, tmp3, dst + dst_stride);

        ILVR_B2_UB(src4, src3, src5, src4, vec4, vec6);
        ILVL_B2_UB(src4, src3, src5, src4, vec5, vec7);
        DOTP_UB2_UH(vec4, vec5, filt0, filt0, tmp4, tmp5);
        SRARI_H2_UH(tmp4, tmp5, 7);
        SAT_UH2_UH(tmp4, tmp5, 7);
        PCKEV_ST_SB(tmp4, tmp5, dst + 16);

        DOTP_UB2_UH(vec6, vec7, filt0, filt0, tmp6, tmp7);
        SRARI_H2_UH(tmp6, tmp7, 7);
        SAT_UH2_UH(tmp6, tmp7, 7);
        PCKEV_ST_SB(tmp6, tmp7, dst + 16 + dst_stride);

        ILVR_B2_UB(src7, src6, src8, src7, vec0, vec2);
        ILVL_B2_UB(src7, src6, src8, src7, vec1, vec3);
        DOTP_UB2_UH(vec0, vec1, filt0, filt0, tmp0, tmp1);
        SRARI_H2_UH(tmp0, tmp1, 7);
        SAT_UH2_UH(tmp0, tmp1, 7);
        PCKEV_ST_SB(tmp0, tmp1, dst + 32);

        DOTP_UB2_UH(vec2, vec3, filt0, filt0, tmp2, tmp3);
        SRARI_H2_UH(tmp2, tmp3, 7);
        SAT_UH2_UH(tmp2, tmp3, 7);
        PCKEV_ST_SB(tmp2, tmp3, dst + 32 + dst_stride);

        ILVR_B2_UB(src10, src9, src11, src10, vec4, vec6);
        ILVL_B2_UB(src10, src9, src11, src10, vec5, vec7);
        DOTP_UB2_UH(vec4, vec5, filt0, filt0, tmp4, tmp5);
        SRARI_H2_UH(tmp4, tmp5, 7);
        SAT_UH2_UH(tmp4, tmp5, 7);
        PCKEV_ST_SB(tmp4, tmp5, dst + 48);

        DOTP_UB2_UH(vec6, vec7, filt0, filt0, tmp6, tmp7);
        SRARI_H2_UH(tmp6, tmp7, 7);
        SAT_UH2_UH(tmp6, tmp7, 7);
        PCKEV_ST_SB(tmp6, tmp7, dst + 48 + dst_stride);
        dst += (2 * dst_stride);

        src0 = src2;
        src3 = src5;
        src6 = src8;
        src9 = src11;
    }
}
