
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


 int DOTP_SB2_SH (int ,int ,int ,int ,int ,int ) ;
 int DOTP_SB4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DPADD_SB2_SH (int ,int ,int ,int ,int ,int ) ;
 int DPADD_SB4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB2 (int *,int,int ,int ) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 scalar_t__ PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H4_SB (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_D2 (scalar_t__,int ,int,int *,int) ;
 int ST_UB (scalar_t__,int *) ;
 int VSHF_B2_SB (int ,int ,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void common_hz_8t_24w_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7, out;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v16i8 vec11;
    v8i16 out0, out1, out2, out3, out8, out9, filt;

    mask0 = LD_UB(&ff_hevc_mask_arr[0]);
    src -= 3;


    filt = LD_SH(filter);
    SPLATI_H4_SB(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    for (loop_cnt = 16; loop_cnt--;) {
        LD_SB2(src, src_stride, src0, src2);
        LD_SB2(src + 16, src_stride, src1, src3);
        XORI_B4_128_SB(src0, src1, src2, src3);
        src += (2 * src_stride);
        VSHF_B2_SB(src0, src0, src1, src1, mask0, mask0, vec0, vec8);
        VSHF_B2_SB(src2, src2, src3, src3, mask0, mask0, vec2, vec9);
        VSHF_B2_SB(src0, src1, src2, src3, mask4, mask4, vec1, vec3);
        DOTP_SB4_SH(vec0, vec8, vec2, vec9, filt0, filt0, filt0, filt0, out0,
                    out8, out2, out9);
        DOTP_SB2_SH(vec1, vec3, filt0, filt0, out1, out3);
        VSHF_B2_SB(src0, src0, src1, src1, mask2, mask2, vec0, vec8);
        VSHF_B2_SB(src2, src2, src3, src3, mask2, mask2, vec2, vec9);
        VSHF_B2_SB(src0, src1, src2, src3, mask6, mask6, vec1, vec3);
        DPADD_SB4_SH(vec0, vec8, vec2, vec9, filt2, filt2, filt2, filt2,
                     out0, out8, out2, out9);
        DPADD_SB2_SH(vec1, vec3, filt2, filt2, out1, out3);
        VSHF_B2_SB(src0, src0, src1, src1, mask1, mask1, vec4, vec10);
        VSHF_B2_SB(src2, src2, src3, src3, mask1, mask1, vec6, vec11);
        VSHF_B2_SB(src0, src1, src2, src3, mask5, mask5, vec5, vec7);
        DPADD_SB4_SH(vec4, vec10, vec6, vec11, filt1, filt1, filt1, filt1,
                     out0, out8, out2, out9);
        DPADD_SB2_SH(vec5, vec7, filt1, filt1, out1, out3);
        VSHF_B2_SB(src0, src0, src1, src1, mask3, mask3, vec4, vec10);
        VSHF_B2_SB(src2, src2, src3, src3, mask3, mask3, vec6, vec11);
        VSHF_B2_SB(src0, src1, src2, src3, mask7, mask7, vec5, vec7);
        DPADD_SB4_SH(vec4, vec10, vec6, vec11, filt3, filt3, filt3, filt3,
                     out0, out8, out2, out9);
        DPADD_SB2_SH(vec5, vec7, filt3, filt3, out1, out3);
        SRARI_H4_SH(out0, out8, out2, out9, 6);
        SRARI_H2_SH(out1, out3, 6);
        SAT_SH4_SH(out0, out8, out2, out9, 7);
        SAT_SH2_SH(out1, out3, 7);
        out = PCKEV_XORI128_UB(out8, out9);
        ST_D2(out, 0, 1, dst + 16, dst_stride);
        out = PCKEV_XORI128_UB(out0, out1);
        ST_UB(out, dst);
        dst += dst_stride;
        out = PCKEV_XORI128_UB(out2, out3);
        ST_UB(out, dst);
        dst += dst_stride;
    }
}
