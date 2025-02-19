
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ v8i16 ;
typedef scalar_t__ v4i32 ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 scalar_t__ AVC_DOT_SW3_SW (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ AVC_HORZ_FILTER_SH (int ,int ,int ,int ,int ) ;
 int AVER_UB2_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int ILVL_H4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_H4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int INSERT_D2_UB (int ,int ,TYPE_1__) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SB4 (int const*,int,int ,int ,int ,int ) ;
 int LD_SB5 (int const*,int,int ,int ,int ,int ,int ) ;
 TYPE_1__ PCKEV_XORI128_UB (scalar_t__,scalar_t__) ;
 int SAT_SH4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int SRARI_H4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ST_D4 (TYPE_1__,TYPE_1__,int ,int,int ,int,int *,int) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int XORI_B5_128_SB (int ,int ,int ,int ,int ) ;
 scalar_t__ __msa_aver_s_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_w (int const) ;
 scalar_t__ __msa_pckev_h (scalar_t__,scalar_t__) ;
 int * luma_mask_arr ;

void ff_avg_h264_qpel8_mc21_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    const int32_t filt_const0 = 0xfffb0001;
    const int32_t filt_const1 = 0x140014;
    const int32_t filt_const2 = 0x1fffb;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 dst0 = { 0 }, dst1 = { 0 }, out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src11, src12, mask0, mask1, mask2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, hz_out9, hz_out10, hz_out11, hz_out12;
    v8i16 hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r, hz_out54_r;
    v8i16 hz_out65_r, hz_out76_r, hz_out87_r, hz_out89_r, hz_out910_r;
    v8i16 hz_out1110_r, hz_out1211_r, tmp0, tmp1, tmp2, tmp3;
    v8i16 hz_out10_l, hz_out21_l, hz_out32_l, hz_out43_l, hz_out54_l;
    v8i16 hz_out65_l, hz_out76_l, hz_out87_l, hz_out89_l, hz_out910_l;
    v8i16 hz_out1110_l, hz_out1211_l, filt0, filt1, filt2;
    v4i32 tmp0_w, tmp1_w;

    LD_SB3(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    filt0 = (v8i16) __msa_fill_w(filt_const0);
    filt1 = (v8i16) __msa_fill_w(filt_const1);
    filt2 = (v8i16) __msa_fill_w(filt_const2);

    src -= ((2 * stride) + 2);

    LD_SB5(src, stride, src0, src1, src2, src3, src4);
    XORI_B5_128_SB(src0, src1, src2, src3, src4);
    src += (5 * stride);

    hz_out0 = AVC_HORZ_FILTER_SH(src0, src0, mask0, mask1, mask2);
    hz_out1 = AVC_HORZ_FILTER_SH(src1, src1, mask0, mask1, mask2);
    hz_out2 = AVC_HORZ_FILTER_SH(src2, src2, mask0, mask1, mask2);
    hz_out3 = AVC_HORZ_FILTER_SH(src3, src3, mask0, mask1, mask2);
    hz_out4 = AVC_HORZ_FILTER_SH(src4, src4, mask0, mask1, mask2);

    LD_SB4(src, stride, src5, src6, src7, src8);
    src += (4 * stride);
    XORI_B4_128_SB(src5, src6, src7, src8);

    hz_out5 = AVC_HORZ_FILTER_SH(src5, src5, mask0, mask1, mask2);
    hz_out6 = AVC_HORZ_FILTER_SH(src6, src6, mask0, mask1, mask2);
    hz_out7 = AVC_HORZ_FILTER_SH(src7, src7, mask0, mask1, mask2);
    hz_out8 = AVC_HORZ_FILTER_SH(src8, src8, mask0, mask1, mask2);

    ILVR_H4_SH(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r);
    ILVL_H4_SH(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_l, hz_out21_l, hz_out32_l, hz_out43_l);
    ILVR_H4_SH(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_r, hz_out65_r, hz_out76_r, hz_out87_r);
    ILVL_H4_SH(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_l, hz_out65_l, hz_out76_l, hz_out87_l);

    tmp0_w = AVC_DOT_SW3_SW(hz_out10_r, hz_out32_r, hz_out54_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out10_l, hz_out32_l, hz_out54_l, filt0, filt1,
                            filt2);
    tmp0 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = AVC_DOT_SW3_SW(hz_out21_r, hz_out43_r, hz_out65_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out21_l, hz_out43_l, hz_out65_l, filt0, filt1,
                            filt2);
    tmp1 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = AVC_DOT_SW3_SW(hz_out32_r, hz_out54_r, hz_out76_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out32_l, hz_out54_l, hz_out76_l, filt0, filt1,
                            filt2);
    tmp2 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = AVC_DOT_SW3_SW(hz_out43_r, hz_out65_r, hz_out87_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out43_l, hz_out65_l, hz_out87_l, filt0, filt1,
                            filt2);
    tmp3 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);

    SRARI_H4_SH(hz_out2, hz_out3, hz_out4, hz_out5, 5);
    SAT_SH4_SH(hz_out2, hz_out3, hz_out4, hz_out5, 7);

    LD4(dst, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst0);
    INSERT_D2_UB(tp2, tp3, dst1);

    tmp0 = __msa_aver_s_h(tmp0, hz_out2);
    tmp1 = __msa_aver_s_h(tmp1, hz_out3);
    tmp2 = __msa_aver_s_h(tmp2, hz_out4);
    tmp3 = __msa_aver_s_h(tmp3, hz_out5);

    out0 = PCKEV_XORI128_UB(tmp0, tmp1);
    out1 = PCKEV_XORI128_UB(tmp2, tmp3);
    AVER_UB2_UB(out0, dst0, out1, dst1, dst0, dst1);
    ST_D4(dst0, dst1, 0, 1, 0, 1, dst, stride);
    dst += (4 * stride);

    LD_SB4(src, stride, src9, src10, src11, src12);
    XORI_B4_128_SB(src9, src10, src11, src12);
    hz_out9 = AVC_HORZ_FILTER_SH(src9, src9, mask0, mask1, mask2);
    hz_out10 = AVC_HORZ_FILTER_SH(src10, src10, mask0, mask1, mask2);
    hz_out11 = AVC_HORZ_FILTER_SH(src11, src11, mask0, mask1, mask2);
    hz_out12 = AVC_HORZ_FILTER_SH(src12, src12, mask0, mask1, mask2);
    ILVR_H4_SH(hz_out9, hz_out8, hz_out10, hz_out9, hz_out11, hz_out10,
               hz_out12, hz_out11, hz_out89_r, hz_out910_r, hz_out1110_r,
               hz_out1211_r);
    ILVL_H4_SH(hz_out9, hz_out8, hz_out10, hz_out9, hz_out11, hz_out10,
               hz_out12, hz_out11, hz_out89_l, hz_out910_l, hz_out1110_l,
               hz_out1211_l);
    tmp0_w = AVC_DOT_SW3_SW(hz_out54_r, hz_out76_r, hz_out89_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out54_l, hz_out76_l, hz_out89_l, filt0, filt1,
                            filt2);
    tmp0 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = AVC_DOT_SW3_SW(hz_out65_r, hz_out87_r, hz_out910_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out65_l, hz_out87_l, hz_out910_l, filt0, filt1,
                            filt2);
    tmp1 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = AVC_DOT_SW3_SW(hz_out76_r, hz_out89_r, hz_out1110_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out76_l, hz_out89_l, hz_out1110_l, filt0, filt1,
                            filt2);
    tmp2 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = AVC_DOT_SW3_SW(hz_out87_r, hz_out910_r, hz_out1211_r, filt0, filt1,
                            filt2);
    tmp1_w = AVC_DOT_SW3_SW(hz_out87_l, hz_out910_l, hz_out1211_l, filt0, filt1,
                            filt2);
    tmp3 = __msa_pckev_h((v8i16) tmp1_w, (v8i16) tmp0_w);

    SRARI_H4_SH(hz_out6, hz_out7, hz_out8, hz_out9, 5);
    SAT_SH4_SH(hz_out6, hz_out7, hz_out8, hz_out9, 7);

    LD4(dst, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst0);
    INSERT_D2_UB(tp2, tp3, dst1);

    tmp0 = __msa_aver_s_h(tmp0, hz_out6);
    tmp1 = __msa_aver_s_h(tmp1, hz_out7);
    tmp2 = __msa_aver_s_h(tmp2, hz_out8);
    tmp3 = __msa_aver_s_h(tmp3, hz_out9);

    out0 = PCKEV_XORI128_UB(tmp0, tmp1);
    out1 = PCKEV_XORI128_UB(tmp2, tmp3);
    AVER_UB2_UB(out0, dst0, out1, dst1, dst0, dst1);
    ST_D4(dst0, dst1, 0, 1, 0, 1, dst, stride);
}
