
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int HEVC_FILT_4TAP_SH (int ,int ,int ,int ) ;
 int ILVR_B2_SH (int ,int ,int ,int ,int ,int ) ;
 int LD_SB5 (int *,int ,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SPLATI_H2_SH (int ,int ,int,int ,int ) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_D2 (int ,int ,int,int *,int ) ;
 int XORI_B5_128_SB (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void common_vt_4t_8x2_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, src4;
    v8i16 src01, src12, src23, src34, tmp0, tmp1, filt, filt0, filt1;
    v16u8 out;

    src -= src_stride;


    filt = LD_SH(filter);
    SPLATI_H2_SH(filt, 0, 1, filt0, filt1);

    LD_SB5(src, src_stride, src0, src1, src2, src3, src4);
    XORI_B5_128_SB(src0, src1, src2, src3, src4);
    ILVR_B2_SH(src1, src0, src3, src2, src01, src23);
    tmp0 = HEVC_FILT_4TAP_SH(src01, src23, filt0, filt1);
    ILVR_B2_SH(src2, src1, src4, src3, src12, src34);
    tmp1 = HEVC_FILT_4TAP_SH(src12, src34, filt0, filt1);
    SRARI_H2_SH(tmp0, tmp1, 6);
    SAT_SH2_SH(tmp0, tmp1, 7);
    out = PCKEV_XORI128_UB(tmp0, tmp1);
    ST_D2(out, 0, 1, dst, dst_stride);
}
