
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


 int HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int ,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SPLATI_H2_SB (int ,int ,int,scalar_t__,scalar_t__) ;
 int ST_W2 (int ,int ,int,int *,int ) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 int __msa_sat_s_h (int ,int) ;
 int __msa_srari_h (int ,int) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void common_hz_4t_4x2_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 filt0, filt1, src0, src1, mask0, mask1, vec0, vec1;
    v16u8 out;
    v8i16 filt, res0;

    mask0 = LD_SB(&ff_hevc_mask_arr[16]);
    src -= 1;


    filt = LD_SH(filter);
    SPLATI_H2_SB(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    LD_SB2(src, src_stride, src0, src1);
    XORI_B2_128_SB(src0, src1);
    VSHF_B2_SB(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    res0 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    res0 = __msa_srari_h(res0, 6);
    res0 = __msa_sat_s_h(res0, 7);
    out = PCKEV_XORI128_UB(res0, res0);
    ST_W2(out, 0, 1, dst, dst_stride);
}
