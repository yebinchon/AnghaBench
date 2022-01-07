
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


 int ADDS_SH4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DOTP_SB4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DPADD_SB4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB (int const*) ;
 int LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 int LD_UB2 (int *,int,scalar_t__,scalar_t__) ;
 int PCKEV_XORI128_AVG_ST_UB (int ,int ,scalar_t__,int *) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SPLATI_H4_SB (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int VSHF_B4_SH (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int __msa_sldi_b (int ,int ,int) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hz_8t_and_aver_dst_64w_msa(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter,
                                              int32_t height)
{
    uint32_t loop_cnt, cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 dst1, dst2, mask0, mask1, mask2, mask3;
    v8i16 filt, out0, out1, out2, out3;
    v8i16 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;

    mask0 = LD_UB(&mc_filt_mask_arr[0]);
    src -= 3;


    filt = LD_SH(filter);
    SPLATI_H4_SB(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (loop_cnt = height; loop_cnt--;) {
        for (cnt = 0; cnt < 2; ++cnt) {
            src0 = LD_SB(&src[cnt << 5]);
            src2 = LD_SB(&src[16 + (cnt << 5)]);
            src3 = LD_SB(&src[24 + (cnt << 5)]);
            src1 = __msa_sldi_b(src2, src0, 8);

            XORI_B4_128_SB(src0, src1, src2, src3);
            VSHF_B4_SH(src0, src0, mask0, mask1, mask2, mask3, vec0, vec4, vec8,
                       vec12);
            VSHF_B4_SH(src1, src1, mask0, mask1, mask2, mask3, vec1, vec5, vec9,
                       vec13);
            VSHF_B4_SH(src2, src2, mask0, mask1, mask2, mask3, vec2, vec6,
                       vec10, vec14);
            VSHF_B4_SH(src3, src3, mask0, mask1, mask2, mask3, vec3, vec7,
                       vec11, vec15);
            DOTP_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                        vec0, vec1, vec2, vec3);
            DOTP_SB4_SH(vec8, vec9, vec10, vec11, filt2, filt2, filt2, filt2,
                        vec8, vec9, vec10, vec11);
            DPADD_SB4_SH(vec4, vec5, vec6, vec7, filt1, filt1, filt1, filt1,
                         vec0, vec1, vec2, vec3);
            DPADD_SB4_SH(vec12, vec13, vec14, vec15, filt3, filt3, filt3, filt3,
                         vec8, vec9, vec10, vec11);
            ADDS_SH4_SH(vec0, vec8, vec1, vec9, vec2, vec10, vec3, vec11, out0,
                        out1, out2, out3);
            SRARI_H4_SH(out0, out1, out2, out3, 7);
            SAT_SH4_SH(out0, out1, out2, out3, 7);
            LD_UB2(&dst[cnt << 5], 16, dst1, dst2);
            PCKEV_XORI128_AVG_ST_UB(out1, out0, dst1, &dst[cnt << 5]);
            PCKEV_XORI128_AVG_ST_UB(out3, out2, dst2, &dst[16 + (cnt << 5)]);
        }

        src += src_stride;
        dst += dst_stride;
    }
}
