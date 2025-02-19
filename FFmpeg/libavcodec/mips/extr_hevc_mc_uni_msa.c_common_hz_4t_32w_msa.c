
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


 int DOTP_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int DPADD_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H2_SB (int ,int ,int,scalar_t__,scalar_t__) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_UB (int ,int *) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B8_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void common_hz_4t_32w_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 filt0, filt1, mask0, mask1;
    v16u8 out;
    v16i8 vec0_m, vec1_m, vec2_m, vec3_m;
    v8i16 filt, out0, out1, out2, out3, out4, out5, out6, out7;

    mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    src -= 1;


    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        src0 = LD_SB(src);
        src1 = LD_SB(src + 8);
        src2 = LD_SB(src + 16);
        src3 = LD_SB(src + 24);
        src += src_stride;
        src4 = LD_SB(src);
        src5 = LD_SB(src + 8);
        src6 = LD_SB(src + 16);
        src7 = LD_SB(src + 24);
        src += src_stride;

        XORI_B8_128_SB(src0, src1, src2, src3, src4, src5, src6, src7);

        VSHF_B2_SB(src0, src0, src1, src1, mask0, mask0, vec0_m, vec1_m);
        VSHF_B2_SB(src2, src2, src3, src3, mask0, mask0, vec2_m, vec3_m);
        DOTP_SB4_SH(vec0_m, vec1_m, vec2_m, vec3_m, filt0, filt0, filt0, filt0,
                    out0, out1, out2, out3);
        VSHF_B2_SB(src0, src0, src1, src1, mask1, mask1, vec0_m, vec1_m);
        VSHF_B2_SB(src2, src2, src3, src3, mask1, mask1, vec2_m, vec3_m);
        DPADD_SB4_SH(vec0_m, vec1_m, vec2_m, vec3_m, filt1, filt1, filt1, filt1,
                     out0, out1, out2, out3);

        VSHF_B2_SB(src4, src4, src5, src5, mask0, mask0, vec0_m, vec1_m);
        VSHF_B2_SB(src6, src6, src7, src7, mask0, mask0, vec2_m, vec3_m);
        DOTP_SB4_SH(vec0_m, vec1_m, vec2_m, vec3_m, filt0, filt0, filt0, filt0,
                    out4, out5, out6, out7);
        VSHF_B2_SB(src4, src4, src5, src5, mask1, mask1, vec0_m, vec1_m);
        VSHF_B2_SB(src6, src6, src7, src7, mask1, mask1, vec2_m, vec3_m);
        DPADD_SB4_SH(vec0_m, vec1_m, vec2_m, vec3_m, filt1, filt1, filt1, filt1,
                     out4, out5, out6, out7);
        SRARI_H4_SH(out0, out1, out2, out3, 6);
        SRARI_H4_SH(out4, out5, out6, out7, 6);
        SAT_SH4_SH(out0, out1, out2, out3, 7);
        SAT_SH4_SH(out4, out5, out6, out7, 7);
        out = PCKEV_XORI128_UB(out0, out1);
        ST_UB(out, dst);
        out = PCKEV_XORI128_UB(out2, out3);
        ST_UB(out, dst + 16);
        dst += dst_stride;
        out = PCKEV_XORI128_UB(out4, out5);
        ST_UB(out, dst);
        out = PCKEV_XORI128_UB(out6, out7);
        ST_UB(out, dst + 16);
        dst += dst_stride;
    }
}
