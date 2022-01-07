
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;


 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int ILVR_B4_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int INSERT_D2_UB (int ,int ,scalar_t__) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int const*) ;
 int LD_UB8 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_AVG_ST8x4_UB (int ,int ,int ,int ,scalar_t__,scalar_t__,int *,int) ;
 int SAT_UH4_UH (int ,int ,int ,int ,int) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;

__attribute__((used)) static void common_vt_2t_and_aver_dst_8x8mult_msa(const uint8_t *src,
                                                  int32_t src_stride,
                                                  uint8_t *dst,
                                                  int32_t dst_stride,
                                                  const int8_t *filter,
                                                  int32_t height)
{
    uint32_t loop_cnt;
    int64_t tp0, tp1, tp2, tp3;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16u8 dst0, dst1, dst2, dst3;
    v16u8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;


    filt = LD_SH(filter);
    filt0 = (v16u8) __msa_splati_h(filt, 0);

    src0 = LD_UB(src);
    src += src_stride;

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        LD_UB8(src, src_stride, src1, src2, src3, src4, src5, src6, src7, src8);
        src += (8 * src_stride);

        LD4(dst, dst_stride, tp0, tp1, tp2, tp3);
        INSERT_D2_UB(tp0, tp1, dst0);
        INSERT_D2_UB(tp2, tp3, dst1);
        LD4(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
        INSERT_D2_UB(tp0, tp1, dst2);
        INSERT_D2_UB(tp2, tp3, dst3);

        ILVR_B4_UB(src1, src0, src2, src1, src3, src2, src4, src3,
                   vec0, vec1, vec2, vec3);
        ILVR_B4_UB(src5, src4, src6, src5, src7, src6, src8, src7,
                   vec4, vec5, vec6, vec7);
        DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                    tmp0, tmp1, tmp2, tmp3);
        SRARI_H4_UH(tmp0, tmp1, tmp2, tmp3, 7);
        SAT_UH4_UH(tmp0, tmp1, tmp2, tmp3, 7);
        PCKEV_AVG_ST8x4_UB(tmp0, tmp1, tmp2, tmp3, dst0, dst1, dst, dst_stride);
        dst += (4 * dst_stride);

        DOTP_UB4_UH(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    tmp0, tmp1, tmp2, tmp3);
        SRARI_H4_UH(tmp0, tmp1, tmp2, tmp3, 7);
        SAT_UH4_UH(tmp0, tmp1, tmp2, tmp3, 7);
        PCKEV_AVG_ST8x4_UB(tmp0, tmp1, tmp2, tmp3, dst2, dst3, dst, dst_stride);
        dst += (4 * dst_stride);

        src0 = src8;
    }
}
