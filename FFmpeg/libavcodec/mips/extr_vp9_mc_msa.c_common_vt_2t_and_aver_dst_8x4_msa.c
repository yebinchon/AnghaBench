
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;


 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int ILVR_B2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int INSERT_D2_UB (int ,int ,scalar_t__) ;
 int LD4 (int *,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int LD_UB5 (int const*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_AVG_ST8x4_UB (int ,int ,int ,int ,scalar_t__,scalar_t__,int *,int ) ;
 int SAT_UH4_UH (int ,int ,int ,int ,int) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 scalar_t__ __msa_splati_h (int ,int ) ;

__attribute__((used)) static void common_vt_2t_and_aver_dst_8x4_msa(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst,
                                              int32_t dst_stride,
                                              const int8_t *filter)
{
    int64_t tp0, tp1, tp2, tp3;
    v16u8 src0, src1, src2, src3, src4;
    v16u8 dst0, dst1, vec0, vec1, vec2, vec3, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;


    filt = LD_SH(filter);
    filt0 = (v16u8) __msa_splati_h(filt, 0);

    LD_UB5(src, src_stride, src0, src1, src2, src3, src4);
    LD4(dst, dst_stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst0);
    INSERT_D2_UB(tp2, tp3, dst1);
    ILVR_B2_UB(src1, src0, src2, src1, vec0, vec1);
    ILVR_B2_UB(src3, src2, src4, src3, vec2, vec3);
    DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                tmp0, tmp1, tmp2, tmp3);
    SRARI_H4_UH(tmp0, tmp1, tmp2, tmp3, 7);
    SAT_UH4_UH(tmp0, tmp1, tmp2, tmp3, 7);
    PCKEV_AVG_ST8x4_UB(tmp0, tmp1, tmp2, tmp3, dst0, dst1, dst, dst_stride);
}
