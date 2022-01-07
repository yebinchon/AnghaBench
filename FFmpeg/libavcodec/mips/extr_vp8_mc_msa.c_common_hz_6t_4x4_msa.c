
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HORIZ_6TAP_4WID_4VECS_FILT (int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ) ;
 int LD_SB4 (int *,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 scalar_t__ PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SPLATI_H3_SB (int ,int ,int,int,int ,int ,int ) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_W4 (scalar_t__,int ,int,int,int,int *,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hz_6t_4x4_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2;
    v16u8 mask0, mask1, mask2, out;
    v8i16 filt, out0, out1;

    mask0 = LD_UB(&mc_filt_mask_arr[16]);
    src -= 2;


    filt = LD_SH(filter);
    SPLATI_H3_SB(filt, 0, 1, 2, filt0, filt1, filt2);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;

    LD_SB4(src, src_stride, src0, src1, src2, src3);
    XORI_B4_128_SB(src0, src1, src2, src3);
    HORIZ_6TAP_4WID_4VECS_FILT(src0, src1, src2, src3, mask0, mask1, mask2,
                               filt0, filt1, filt2, out0, out1);
    SRARI_H2_SH(out0, out1, 7);
    SAT_SH2_SH(out0, out1, 7);
    out = PCKEV_XORI128_UB(out0, out1);
    ST_W4(out, 0, 1, 2, 3, dst, dst_stride);
}
