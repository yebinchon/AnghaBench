
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB (int *) ;
 int LD_SB4 (int const*,int,int ,int ,int ,int ) ;
 int LD_UB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_UH (int const*) ;
 int PCKEV_AVG_ST_UB (scalar_t__,scalar_t__,scalar_t__,int *) ;
 int SRARI_H4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int * mc_filt_mask_arr ;
 int ** vp9_bilinear_filters_msa ;

void ff_avg_bilin_16h_msa(uint8_t *dst, ptrdiff_t dst_stride,
                          const uint8_t *src, ptrdiff_t src_stride,
                          int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = vp9_bilinear_filters_msa[mx - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt0, dst0, dst1, dst2, dst3;
    v16u8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8u16 res0, res1, res2, res3, res4, res5, res6, res7, filt;

    mask = LD_SB(&mc_filt_mask_arr[0]);


    filt = LD_UH(filter);
    filt0 = (v16u8) __msa_splati_h((v8i16) filt, 0);

    LD_SB4(src, src_stride, src0, src2, src4, src6);
    LD_SB4(src + 8, src_stride, src1, src3, src5, src7);
    src += (4 * src_stride);

    VSHF_B2_UB(src0, src0, src1, src1, mask, mask, vec0, vec1);
    VSHF_B2_UB(src2, src2, src3, src3, mask, mask, vec2, vec3);
    VSHF_B2_UB(src4, src4, src5, src5, mask, mask, vec4, vec5);
    VSHF_B2_UB(src6, src6, src7, src7, mask, mask, vec6, vec7);
    DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, res0, res1,
                res2, res3);
    DOTP_UB4_UH(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0, res4, res5,
                res6, res7);
    SRARI_H4_UH(res0, res1, res2, res3, 7);
    SRARI_H4_UH(res4, res5, res6, res7, 7);
    LD_UB4(dst, dst_stride, dst0, dst1, dst2, dst3);
    PCKEV_AVG_ST_UB(res1, res0, dst0, dst);
    dst += dst_stride;
    PCKEV_AVG_ST_UB(res3, res2, dst1, dst);
    dst += dst_stride;
    PCKEV_AVG_ST_UB(res5, res4, dst2, dst);
    dst += dst_stride;
    PCKEV_AVG_ST_UB(res7, res6, dst3, dst);
    dst += dst_stride;

    for (loop_cnt = (height >> 2) - 1; loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src2, src4, src6);
        LD_SB4(src + 8, src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);

        VSHF_B2_UB(src0, src0, src1, src1, mask, mask, vec0, vec1);
        VSHF_B2_UB(src2, src2, src3, src3, mask, mask, vec2, vec3);
        VSHF_B2_UB(src4, src4, src5, src5, mask, mask, vec4, vec5);
        VSHF_B2_UB(src6, src6, src7, src7, mask, mask, vec6, vec7);
        DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, res0,
                    res1, res2, res3);
        DOTP_UB4_UH(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0, res4,
                    res5, res6, res7);
        SRARI_H4_UH(res0, res1, res2, res3, 7);
        SRARI_H4_UH(res4, res5, res6, res7, 7);
        LD_UB4(dst, dst_stride, dst0, dst1, dst2, dst3);
        PCKEV_AVG_ST_UB(res1, res0, dst0, dst);
        dst += dst_stride;
        PCKEV_AVG_ST_UB(res3, res2, dst1, dst);
        dst += dst_stride;
        PCKEV_AVG_ST_UB(res5, res4, dst2, dst);
        dst += dst_stride;
        PCKEV_AVG_ST_UB(res7, res6, dst3, dst);
        dst += dst_stride;
    }
}
