
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 int DOTP_SB2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int DOTP_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int DPADD_SB2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int DPADD_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H2_SB (int ,int ,int,scalar_t__,scalar_t__) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void common_hz_4t_12w_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, mask0, mask1, mask2, mask3;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v16i8 vec10, vec11;
    v16u8 tmp0, tmp1;
    v8i16 filt, out0, out1, out2, out3, out4, out5;

    mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    mask2 = LD_SB(&ff_hevc_mask_arr[32]);

    src -= 1;


    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;
    mask3 = mask2 + 2;

    for (loop_cnt = 4; loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);

        XORI_B4_128_SB(src0, src1, src2, src3);
        VSHF_B2_SB(src0, src1, src2, src3, mask2, mask2, vec0, vec1);
        DOTP_SB2_SH(vec0, vec1, filt0, filt0, out0, out1);
        VSHF_B2_SB(src0, src1, src2, src3, mask3, mask3, vec2, vec3);
        DPADD_SB2_SH(vec2, vec3, filt1, filt1, out0, out1);
        SRARI_H2_SH(out0, out1, 6);
        SAT_SH2_SH(out0, out1, 7);
        tmp0 = PCKEV_XORI128_UB(out0, out1);
        ST_W4(tmp0, 0, 1, 2, 3, dst + 8, dst_stride);

        VSHF_B2_SB(src0, src0, src1, src1, mask0, mask0, vec4, vec5);
        VSHF_B2_SB(src2, src2, src3, src3, mask0, mask0, vec6, vec7);
        DOTP_SB4_SH(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    out2, out3, out4, out5);
        VSHF_B2_SB(src0, src0, src1, src1, mask1, mask1, vec8, vec9);
        VSHF_B2_SB(src2, src2, src3, src3, mask1, mask1, vec10, vec11);
        DPADD_SB4_SH(vec8, vec9, vec10, vec11, filt1, filt1, filt1, filt1,
                     out2, out3, out4, out5);
        SRARI_H4_SH(out2, out3, out4, out5, 6);
        SAT_SH4_SH(out2, out3, out4, out5, 7);
        tmp0 = PCKEV_XORI128_UB(out2, out3);
        tmp1 = PCKEV_XORI128_UB(out4, out5);
        ST_D4(tmp0, tmp1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}
