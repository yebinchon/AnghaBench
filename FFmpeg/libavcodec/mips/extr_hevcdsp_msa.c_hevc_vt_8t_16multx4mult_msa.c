
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int DPADD_SB4_SH (int ,int ,int ,int ,int,int,int,int,int,int,int,int) ;
 int ILVL_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int ILVL_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVR_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int ILVR_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SB4 (int *,int,int ,int ,int ,int ) ;
 int LD_SB7 (int *,int,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int SPLATI_H4_SH (int,int ,int,int,int,int,int,int,int) ;
 int ST_SH4 (int,int,int,int,int *,int) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int XORI_B7_128_SB (int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_ldi_h (int) ;

__attribute__((used)) static void hevc_vt_8t_16multx4mult_msa(uint8_t *src,
                                        int32_t src_stride,
                                        int16_t *dst,
                                        int32_t dst_stride,
                                        const int8_t *filter,
                                        int32_t height,
                                        int32_t width)
{
    uint8_t *src_tmp;
    int16_t *dst_tmp;
    int32_t loop_cnt, cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v16i8 src10_l, src32_l, src54_l, src76_l, src98_l;
    v16i8 src21_l, src43_l, src65_l, src87_l, src109_l;
    v8i16 dst0_l, dst1_l, dst2_l, dst3_l;
    v8i16 filter_vec, const_vec;
    v8i16 filt0, filt1, filt2, filt3;

    src -= (3 * src_stride);
    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    filter_vec = LD_SH(filter);
    SPLATI_H4_SH(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    for (cnt = width >> 4; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        LD_SB7(src_tmp, src_stride, src0, src1, src2, src3, src4, src5, src6);
        src_tmp += (7 * src_stride);
        XORI_B7_128_SB(src0, src1, src2, src3, src4, src5, src6);
        ILVR_B4_SB(src1, src0, src3, src2, src5, src4, src2, src1,
                   src10_r, src32_r, src54_r, src21_r);
        ILVR_B2_SB(src4, src3, src6, src5, src43_r, src65_r);
        ILVL_B4_SB(src1, src0, src3, src2, src5, src4, src2, src1,
                   src10_l, src32_l, src54_l, src21_l);
        ILVL_B2_SB(src4, src3, src6, src5, src43_l, src65_l);

        for (loop_cnt = (height >> 2); loop_cnt--;) {
            LD_SB4(src_tmp, src_stride, src7, src8, src9, src10);
            src_tmp += (4 * src_stride);
            XORI_B4_128_SB(src7, src8, src9, src10);
            ILVR_B4_SB(src7, src6, src8, src7, src9, src8, src10, src9,
                       src76_r, src87_r, src98_r, src109_r);
            ILVL_B4_SB(src7, src6, src8, src7, src9, src8, src10, src9,
                       src76_l, src87_l, src98_l, src109_l);

            dst0_r = const_vec;
            DPADD_SB4_SH(src10_r, src32_r, src54_r, src76_r,
                         filt0, filt1, filt2, filt3,
                         dst0_r, dst0_r, dst0_r, dst0_r);
            dst1_r = const_vec;
            DPADD_SB4_SH(src21_r, src43_r, src65_r, src87_r,
                         filt0, filt1, filt2, filt3,
                         dst1_r, dst1_r, dst1_r, dst1_r);
            dst2_r = const_vec;
            DPADD_SB4_SH(src32_r, src54_r, src76_r, src98_r,
                         filt0, filt1, filt2, filt3,
                         dst2_r, dst2_r, dst2_r, dst2_r);
            dst3_r = const_vec;
            DPADD_SB4_SH(src43_r, src65_r, src87_r, src109_r,
                         filt0, filt1, filt2, filt3,
                         dst3_r, dst3_r, dst3_r, dst3_r);
            dst0_l = const_vec;
            DPADD_SB4_SH(src10_l, src32_l, src54_l, src76_l,
                         filt0, filt1, filt2, filt3,
                         dst0_l, dst0_l, dst0_l, dst0_l);
            dst1_l = const_vec;
            DPADD_SB4_SH(src21_l, src43_l, src65_l, src87_l,
                         filt0, filt1, filt2, filt3,
                         dst1_l, dst1_l, dst1_l, dst1_l);
            dst2_l = const_vec;
            DPADD_SB4_SH(src32_l, src54_l, src76_l, src98_l,
                         filt0, filt1, filt2, filt3,
                         dst2_l, dst2_l, dst2_l, dst2_l);
            dst3_l = const_vec;
            DPADD_SB4_SH(src43_l, src65_l, src87_l, src109_l,
                         filt0, filt1, filt2, filt3,
                         dst3_l, dst3_l, dst3_l, dst3_l);

            ST_SH4(dst0_r, dst1_r, dst2_r, dst3_r, dst_tmp, dst_stride);
            ST_SH4(dst0_l, dst1_l, dst2_l, dst3_l, dst_tmp + 8, dst_stride);
            dst_tmp += (4 * dst_stride);

            src10_r = src54_r;
            src32_r = src76_r;
            src54_r = src98_r;
            src21_r = src65_r;
            src43_r = src87_r;
            src65_r = src109_r;
            src10_l = src54_l;
            src32_l = src76_l;
            src54_l = src98_l;
            src21_l = src65_l;
            src43_l = src87_l;
            src65_l = src109_l;
            src6 = src10;
        }

        src += 16;
        dst += 16;
    }
}
