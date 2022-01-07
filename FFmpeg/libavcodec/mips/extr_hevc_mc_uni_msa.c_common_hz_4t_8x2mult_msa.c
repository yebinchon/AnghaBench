
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


 int DOTP_SB2_SH (int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int DPADD_SB2_SH (int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SPLATI_H2_SB (int ,int ,int,scalar_t__,scalar_t__) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_D2 (int ,int ,int,int *,int) ;
 int VSHF_B2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void common_hz_4t_8x2mult_msa(uint8_t *src, int32_t src_stride,
                                     uint8_t *dst, int32_t dst_stride,
                                     const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, filt0, filt1, mask0, mask1;
    v16u8 out;
    v8i16 filt, vec0, vec1, vec2, vec3;

    mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    src -= 1;

    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        LD_SB2(src, src_stride, src0, src1);
        src += (2 * src_stride);

        XORI_B2_128_SB(src0, src1);
        VSHF_B2_SH(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
        DOTP_SB2_SH(vec0, vec1, filt0, filt0, vec0, vec1);
        VSHF_B2_SH(src0, src0, src1, src1, mask1, mask1, vec2, vec3);
        DPADD_SB2_SH(vec2, vec3, filt1, filt1, vec0, vec1);
        SRARI_H2_SH(vec0, vec1, 6);
        SAT_SH2_SH(vec0, vec1, 7);
        out = PCKEV_XORI128_UB(vec0, vec1);
        ST_D2(out, 0, 1, dst, dst_stride);
        dst += (2 * dst_stride);
    }
}
