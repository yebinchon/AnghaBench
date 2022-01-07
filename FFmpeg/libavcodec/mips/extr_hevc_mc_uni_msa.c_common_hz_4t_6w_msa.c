
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HORIZ_4TAP_8WID_4VECS_FILT (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H2_SB (int ,int ,int,scalar_t__,scalar_t__) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_H2 (int ,int,int,int *,int) ;
 int ST_W2 (int ,int ,int,int *,int) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void common_hz_4t_6w_msa(uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    v16i8 src0, src1, src2, src3, filt0, filt1, mask0, mask1;
    v16u8 out4, out5;
    v8i16 filt, out0, out1, out2, out3;

    mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    src -= 1;


    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    LD_SB4(src, src_stride, src0, src1, src2, src3);
    src += (4 * src_stride);

    XORI_B4_128_SB(src0, src1, src2, src3);
    HORIZ_4TAP_8WID_4VECS_FILT(src0, src1, src2, src3, mask0, mask1, filt0,
                               filt1, out0, out1, out2, out3);
    SRARI_H4_SH(out0, out1, out2, out3, 6);
    SAT_SH4_SH(out0, out1, out2, out3, 7);
    out4 = PCKEV_XORI128_UB(out0, out1);
    out5 = PCKEV_XORI128_UB(out2, out3);
    ST_W2(out4, 0, 2, dst, dst_stride);
    ST_H2(out4, 2, 6, dst + 4, dst_stride);
    ST_W2(out5, 0, 2, dst + 2 * dst_stride, dst_stride);
    ST_H2(out5, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
    dst += (4 * dst_stride);

    LD_SB4(src, src_stride, src0, src1, src2, src3);
    src += (4 * src_stride);

    XORI_B4_128_SB(src0, src1, src2, src3);
    HORIZ_4TAP_8WID_4VECS_FILT(src0, src1, src2, src3, mask0, mask1, filt0,
                               filt1, out0, out1, out2, out3);
    SRARI_H4_SH(out0, out1, out2, out3, 6);
    SAT_SH4_SH(out0, out1, out2, out3, 7);
    out4 = PCKEV_XORI128_UB(out0, out1);
    out5 = PCKEV_XORI128_UB(out2, out3);
    ST_W2(out4, 0, 2, dst, dst_stride);
    ST_H2(out4, 2, 6, dst + 4, dst_stride);
    ST_W2(out5, 0, 2, dst + 2 * dst_stride, dst_stride);
    ST_H2(out5, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
}
