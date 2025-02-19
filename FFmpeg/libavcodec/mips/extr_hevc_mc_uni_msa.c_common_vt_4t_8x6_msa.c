
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v2i64 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 scalar_t__ HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B2_SH (int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int ILVR_B3_SH (int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 scalar_t__ LD_SH (int const*) ;
 int PCKEV_B2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SAT_SH3_SH (scalar_t__,scalar_t__,scalar_t__,int) ;
 int SD (int ,int *) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int SRARI_H2_SH (scalar_t__,scalar_t__,int) ;
 int XORI_B2_128_SH (scalar_t__,scalar_t__) ;
 int XORI_B3_128_SB (int ,int ,int ) ;
 int __msa_copy_u_d (int ,int) ;
 scalar_t__ __msa_srari_h (scalar_t__,int) ;

__attribute__((used)) static void common_vt_4t_8x6_msa(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    uint32_t loop_cnt;
    uint64_t out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 vec0, vec1, vec2, vec3, vec4, tmp0, tmp1, tmp2;
    v8i16 filt, filt0, filt1;

    src -= src_stride;


    filt = LD_SH(filter);
    SPLATI_H2_SH(filt, 0, 1, filt0, filt1);

    LD_SB3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    XORI_B3_128_SB(src0, src1, src2);
    ILVR_B2_SH(src1, src0, src2, src1, vec0, vec2);

    for (loop_cnt = 2; loop_cnt--;) {
        LD_SB3(src, src_stride, src3, src4, src5);
        src += (3 * src_stride);

        XORI_B3_128_SB(src3, src4, src5);
        ILVR_B3_SH(src3, src2, src4, src3, src5, src4, vec1, vec3, vec4);
        tmp0 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
        tmp1 = HEVC_FILT_4TAP_SH(vec2, vec3, filt0, filt1);
        tmp2 = HEVC_FILT_4TAP_SH(vec1, vec4, filt0, filt1);
        SRARI_H2_SH(tmp0, tmp1, 6);
        tmp2 = __msa_srari_h(tmp2, 6);
        SAT_SH3_SH(tmp0, tmp1, tmp2, 7);
        PCKEV_B2_SH(tmp1, tmp0, tmp2, tmp2, tmp0, tmp2);
        XORI_B2_128_SH(tmp0, tmp2);

        out0 = __msa_copy_u_d((v2i64) tmp0, 0);
        out1 = __msa_copy_u_d((v2i64) tmp0, 1);
        out2 = __msa_copy_u_d((v2i64) tmp2, 0);
        SD(out0, dst);
        dst += dst_stride;
        SD(out1, dst);
        dst += dst_stride;
        SD(out2, dst);
        dst += dst_stride;

        src2 = src5;
        vec0 = vec3;
        vec2 = vec4;
    }
}
