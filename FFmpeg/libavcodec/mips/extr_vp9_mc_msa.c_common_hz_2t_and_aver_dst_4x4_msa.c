
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
typedef int int8_t ;
typedef int int32_t ;


 int DOTP_UB2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int INSERT_W4_UB (int ,int ,int ,int ,scalar_t__) ;
 int LD_SB (int *) ;
 int LD_SB4 (int const*,int ,int ,int ,int ,int ) ;
 scalar_t__ LD_UH (int const*) ;
 int LW4 (int *,int ,int ,int ,int ,int ) ;
 int SRARI_H2_UH (scalar_t__,scalar_t__,int) ;
 int ST_W4 (scalar_t__,int ,int,int,int,int *,int ) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_aver_u_b (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hz_2t_and_aver_dst_4x4_msa(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, mask;
    v16u8 filt0, dst0, vec0, vec1, res;
    v8u16 vec2, vec3, filt;

    mask = LD_SB(&mc_filt_mask_arr[16]);


    filt = LD_UH(filter);
    filt0 = (v16u8) __msa_splati_h((v8i16) filt, 0);

    LD_SB4(src, src_stride, src0, src1, src2, src3);
    LW4(dst, dst_stride, tp0, tp1, tp2, tp3);
    INSERT_W4_UB(tp0, tp1, tp2, tp3, dst0);
    VSHF_B2_UB(src0, src1, src2, src3, mask, mask, vec0, vec1);
    DOTP_UB2_UH(vec0, vec1, filt0, filt0, vec2, vec3);
    SRARI_H2_UH(vec2, vec3, 7);

    res = (v16u8) __msa_pckev_b((v16i8) vec3, (v16i8) vec2);
    res = (v16u8) __msa_aver_u_b(res, dst0);

    ST_W4(res, 0, 1, 2, 3, dst, dst_stride);
}
