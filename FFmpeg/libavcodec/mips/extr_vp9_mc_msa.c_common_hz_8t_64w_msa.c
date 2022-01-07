
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


 int HORIZ_8TAP_8WID_4VECS_FILT (int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB (int const*) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 scalar_t__ PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H4_SB (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_UB (scalar_t__,int *) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int __msa_sldi_b (int ,int ,int) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hz_8t_64w_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 mask0, mask1, mask2, mask3, out;
    v8i16 filt, out0, out1, out2, out3;

    mask0 = LD_UB(&mc_filt_mask_arr[0]);
    src -= 3;


    filt = LD_SH(filter);
    SPLATI_H4_SB(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (loop_cnt = height; loop_cnt--;) {
        src0 = LD_SB(src);
        src2 = LD_SB(src + 16);
        src3 = LD_SB(src + 24);
        src1 = __msa_sldi_b(src2, src0, 8);

        XORI_B4_128_SB(src0, src1, src2, src3);
        HORIZ_8TAP_8WID_4VECS_FILT(src0, src1, src2, src3, mask0, mask1,
                                   mask2, mask3, filt0, filt1, filt2, filt3,
                                   out0, out1, out2, out3);
        SRARI_H4_SH(out0, out1, out2, out3, 7);
        SAT_SH4_SH(out0, out1, out2, out3, 7);
        out = PCKEV_XORI128_UB(out0, out1);
        ST_UB(out, dst);
        out = PCKEV_XORI128_UB(out2, out3);
        ST_UB(out, dst + 16);

        src0 = LD_SB(src + 32);
        src2 = LD_SB(src + 48);
        src3 = LD_SB(src + 56);
        src1 = __msa_sldi_b(src2, src0, 8);
        src += src_stride;

        XORI_B4_128_SB(src0, src1, src2, src3);
        HORIZ_8TAP_8WID_4VECS_FILT(src0, src1, src2, src3, mask0, mask1,
                                   mask2, mask3, filt0, filt1, filt2, filt3,
                                   out0, out1, out2, out3);
        SRARI_H4_SH(out0, out1, out2, out3, 7);
        SAT_SH4_SH(out0, out1, out2, out3, 7);
        out = PCKEV_XORI128_UB(out0, out1);
        ST_UB(out, dst + 32);
        out = PCKEV_XORI128_UB(out2, out3);
        ST_UB(out, dst + 48);
        dst += dst_stride;
    }
}
