#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int v8i16 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(uint8_t *src,
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
    const_vec = FUNC12(128);
    const_vec <<= 6;

    filter_vec = FUNC7(filter);
    FUNC8(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    for (cnt = width >> 4; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC6(src_tmp, src_stride, src0, src1, src2, src3, src4, src5, src6);
        src_tmp += (7 * src_stride);
        FUNC11(src0, src1, src2, src3, src4, src5, src6);
        FUNC4(src1, src0, src3, src2, src5, src4, src2, src1,
                   src10_r, src32_r, src54_r, src21_r);
        FUNC3(src4, src3, src6, src5, src43_r, src65_r);
        FUNC2(src1, src0, src3, src2, src5, src4, src2, src1,
                   src10_l, src32_l, src54_l, src21_l);
        FUNC1(src4, src3, src6, src5, src43_l, src65_l);

        for (loop_cnt = (height >> 2); loop_cnt--;) {
            FUNC5(src_tmp, src_stride, src7, src8, src9, src10);
            src_tmp += (4 * src_stride);
            FUNC10(src7, src8, src9, src10);
            FUNC4(src7, src6, src8, src7, src9, src8, src10, src9,
                       src76_r, src87_r, src98_r, src109_r);
            FUNC2(src7, src6, src8, src7, src9, src8, src10, src9,
                       src76_l, src87_l, src98_l, src109_l);

            dst0_r = const_vec;
            FUNC0(src10_r, src32_r, src54_r, src76_r,
                         filt0, filt1, filt2, filt3,
                         dst0_r, dst0_r, dst0_r, dst0_r);
            dst1_r = const_vec;
            FUNC0(src21_r, src43_r, src65_r, src87_r,
                         filt0, filt1, filt2, filt3,
                         dst1_r, dst1_r, dst1_r, dst1_r);
            dst2_r = const_vec;
            FUNC0(src32_r, src54_r, src76_r, src98_r,
                         filt0, filt1, filt2, filt3,
                         dst2_r, dst2_r, dst2_r, dst2_r);
            dst3_r = const_vec;
            FUNC0(src43_r, src65_r, src87_r, src109_r,
                         filt0, filt1, filt2, filt3,
                         dst3_r, dst3_r, dst3_r, dst3_r);
            dst0_l = const_vec;
            FUNC0(src10_l, src32_l, src54_l, src76_l,
                         filt0, filt1, filt2, filt3,
                         dst0_l, dst0_l, dst0_l, dst0_l);
            dst1_l = const_vec;
            FUNC0(src21_l, src43_l, src65_l, src87_l,
                         filt0, filt1, filt2, filt3,
                         dst1_l, dst1_l, dst1_l, dst1_l);
            dst2_l = const_vec;
            FUNC0(src32_l, src54_l, src76_l, src98_l,
                         filt0, filt1, filt2, filt3,
                         dst2_l, dst2_l, dst2_l, dst2_l);
            dst3_l = const_vec;
            FUNC0(src43_l, src65_l, src87_l, src109_l,
                         filt0, filt1, filt2, filt3,
                         dst3_l, dst3_l, dst3_l, dst3_l);

            FUNC9(dst0_r, dst1_r, dst2_r, dst3_r, dst_tmp, dst_stride);
            FUNC9(dst0_l, dst1_l, dst2_l, dst3_l, dst_tmp + 8, dst_stride);
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