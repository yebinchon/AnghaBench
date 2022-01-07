
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HORIZ_8TAP_4WID_4VECS_FILT (int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int INSERT_W4_UB (int ,int ,int ,int ,scalar_t__) ;
 int LD_SB4 (int const*,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 int LW4 (int *,int ,int ,int ,int ,int ) ;
 scalar_t__ PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SPLATI_H4_SB (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_W4 (scalar_t__,int ,int,int,int,int *,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 scalar_t__ __msa_aver_u_b (scalar_t__,scalar_t__) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hz_8t_and_aver_dst_4x4_msa(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 dst0, res;
    v16u8 mask0, mask1, mask2, mask3;
    v8i16 filt, res0, res1;

    mask0 = LD_UB(&mc_filt_mask_arr[16]);
    src -= 3;


    filt = LD_SH(filter);
    SPLATI_H4_SB(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    LD_SB4(src, src_stride, src0, src1, src2, src3);
    XORI_B4_128_SB(src0, src1, src2, src3);
    HORIZ_8TAP_4WID_4VECS_FILT(src0, src1, src2, src3, mask0, mask1, mask2,
                               mask3, filt0, filt1, filt2, filt3, res0, res1);
    LW4(dst, dst_stride, tp0, tp1, tp2, tp3);
    INSERT_W4_UB(tp0, tp1, tp2, tp3, dst0);
    SRARI_H2_SH(res0, res1, 7);
    SAT_SH2_SH(res0, res1, 7);
    res = PCKEV_XORI128_UB(res0, res1);
    res = (v16u8) __msa_aver_u_b(res, dst0);
    ST_W4(res, 0, 1, 2, 3, dst, dst_stride);
}
