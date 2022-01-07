
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_120__ TYPE_1__ ;


struct TYPE_120__ {int member_0; } ;
typedef TYPE_1__ v8i16 ;
typedef int v4i32 ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int BUTTERFLY_4 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int BUTTERFLY_8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int DOTP_SH2_SW (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ) ;
 int DOTP_SH4_SW (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ,int ) ;
 int ILVL_H2_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int ILVR_D2_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int ILVR_H2_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SH8 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int PCKEV_H2_SH (TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,TYPE_1__) ;
 int SRARI_H4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int) ;
 int SRARI_W2_SW (int ,int ,int ) ;
 int SRARI_W4_SW (int ,int ,int ,int ,int ) ;
 int ST_SH8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int *,int) ;
 int TRANSPOSE4X8_SH_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int VP9_ADDBLK_ST8x4_UB (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int VP9_DCT_CONST_BITS ;
 int VP9_IDCT8x8_1D (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 TYPE_1__ VP9_SET_COSPI_PAIR (int ,int ) ;
 TYPE_1__ __msa_ilvr_h (TYPE_1__,TYPE_1__) ;
 int cospi_12_64 ;
 int cospi_16_64 ;
 int cospi_20_64 ;
 int cospi_24_64 ;
 int cospi_28_64 ;
 int cospi_4_64 ;
 int cospi_8_64 ;

__attribute__((used)) static void vp9_idct8x8_12_colcol_addblk_msa(int16_t *input, uint8_t *dst,
                                             int32_t dst_stride)
{
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 s0, s1, s2, s3, s4, s5, s6, s7, k0, k1, k2, k3, m0, m1, m2, m3;
    v4i32 tmp0, tmp1, tmp2, tmp3;
    v8i16 zero = { 0 };


    LD_SH8(input, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    ST_SH8(zero, zero, zero, zero, zero, zero, zero, zero, input, 8);
    ILVR_D2_SH(in1, in0, in3, in2, in0, in1);
    ILVR_D2_SH(in5, in4, in7, in6, in2, in3);


    ILVL_H2_SH(in3, in0, in2, in1, s0, s1);
    k0 = VP9_SET_COSPI_PAIR(cospi_28_64, -cospi_4_64);
    k1 = VP9_SET_COSPI_PAIR(cospi_4_64, cospi_28_64);
    k2 = VP9_SET_COSPI_PAIR(-cospi_20_64, cospi_12_64);
    k3 = VP9_SET_COSPI_PAIR(cospi_12_64, cospi_20_64);
    DOTP_SH4_SW(s0, s0, s1, s1, k0, k1, k2, k3, tmp0, tmp1, tmp2, tmp3);
    SRARI_W4_SW(tmp0, tmp1, tmp2, tmp3, VP9_DCT_CONST_BITS);
    PCKEV_H2_SH(zero, tmp0, zero, tmp1, s0, s1);
    PCKEV_H2_SH(zero, tmp2, zero, tmp3, s2, s3);
    BUTTERFLY_4(s0, s1, s3, s2, s4, s7, s6, s5);


    ILVR_H2_SH(in3, in1, in2, in0, s1, s0);
    k0 = VP9_SET_COSPI_PAIR(cospi_16_64, cospi_16_64);
    k1 = VP9_SET_COSPI_PAIR(cospi_16_64, -cospi_16_64);
    k2 = VP9_SET_COSPI_PAIR(cospi_24_64, -cospi_8_64);
    k3 = VP9_SET_COSPI_PAIR(cospi_8_64, cospi_24_64);
    DOTP_SH4_SW(s0, s0, s1, s1, k0, k1, k2, k3, tmp0, tmp1, tmp2, tmp3);
    SRARI_W4_SW(tmp0, tmp1, tmp2, tmp3, VP9_DCT_CONST_BITS);
    PCKEV_H2_SH(zero, tmp0, zero, tmp1, s0, s1);
    PCKEV_H2_SH(zero, tmp2, zero, tmp3, s2, s3);
    BUTTERFLY_4(s0, s1, s2, s3, m0, m1, m2, m3);


    s0 = __msa_ilvr_h(s6, s5);

    k1 = VP9_SET_COSPI_PAIR(-cospi_16_64, cospi_16_64);
    DOTP_SH2_SW(s0, s0, k1, k0, tmp0, tmp1);
    SRARI_W2_SW(tmp0, tmp1, VP9_DCT_CONST_BITS);
    PCKEV_H2_SH(zero, tmp0, zero, tmp1, s2, s3);


    BUTTERFLY_8(m0, m1, m2, m3, s4, s2, s3, s7,
                in0, in1, in2, in3, in4, in5, in6, in7);
    TRANSPOSE4X8_SH_SH(in0, in1, in2, in3, in4, in5, in6, in7,
                       in0, in1, in2, in3, in4, in5, in6, in7);
    VP9_IDCT8x8_1D(in0, in1, in2, in3, in4, in5, in6, in7,
                   in0, in1, in2, in3, in4, in5, in6, in7);


    SRARI_H4_SH(in0, in1, in2, in3, 5);
    SRARI_H4_SH(in4, in5, in6, in7, 5);


    VP9_ADDBLK_ST8x4_UB(dst, dst_stride, in0, in1, in2, in3);
    dst += (4 * dst_stride);
    VP9_ADDBLK_ST8x4_UB(dst, dst_stride, in4, in5, in6, in7);
}
