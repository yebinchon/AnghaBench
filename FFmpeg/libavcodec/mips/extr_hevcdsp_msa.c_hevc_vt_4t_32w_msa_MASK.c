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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter,
                               int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5;
    v16i8 src6, src7, src8, src9, src10, src11;
    v16i8 src10_r, src32_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src87_r, src109_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v16i8 src10_l, src32_l, src76_l, src98_l;
    v16i8 src21_l, src43_l, src87_l, src109_l;
    v8i16 dst0_l, dst1_l, dst2_l, dst3_l;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src -= src_stride;
    const_vec = FUNC10(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC6(filter_vec, 0, 1, filt0, filt1);

    FUNC4(src, src_stride, src0, src1, src2);
    FUNC9(src0, src1, src2);
    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    FUNC1(src1, src0, src2, src1, src10_l, src21_l);

    FUNC4(src + 16, src_stride, src6, src7, src8);
    src += (3 * src_stride);
    FUNC9(src6, src7, src8);
    FUNC2(src7, src6, src8, src7, src76_r, src87_r);
    FUNC1(src7, src6, src8, src7, src76_l, src87_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src3, src4);
        FUNC8(src3, src4);
        FUNC2(src3, src2, src4, src3, src32_r, src43_r);
        FUNC1(src3, src2, src4, src3, src32_l, src43_l);

        FUNC3(src + 16, src_stride, src9, src10);
        src += (2 * src_stride);
        FUNC8(src9, src10);
        FUNC2(src9, src8, src10, src9, src98_r, src109_r);
        FUNC1(src9, src8, src10, src9, src98_l, src109_l);

        dst0_r = const_vec;
        FUNC0(src10_r, src32_r, filt0, filt1, dst0_r, dst0_r);
        dst0_l = const_vec;
        FUNC0(src10_l, src32_l, filt0, filt1, dst0_l, dst0_l);
        dst1_r = const_vec;
        FUNC0(src21_r, src43_r, filt0, filt1, dst1_r, dst1_r);
        dst1_l = const_vec;
        FUNC0(src21_l, src43_l, filt0, filt1, dst1_l, dst1_l);
        dst2_r = const_vec;
        FUNC0(src76_r, src98_r, filt0, filt1, dst2_r, dst2_r);
        dst2_l = const_vec;
        FUNC0(src76_l, src98_l, filt0, filt1, dst2_l, dst2_l);
        dst3_r = const_vec;
        FUNC0(src87_r, src109_r, filt0, filt1, dst3_r, dst3_r);
        dst3_l = const_vec;
        FUNC0(src87_l, src109_l, filt0, filt1, dst3_l, dst3_l);

        FUNC7(dst0_r, dst0_l, dst2_r, dst2_l, dst, 8);
        dst += dst_stride;
        FUNC7(dst1_r, dst1_l, dst3_r, dst3_l, dst, 8);
        dst += dst_stride;

        FUNC3(src, src_stride, src5, src2);
        FUNC8(src5, src2);
        FUNC2(src5, src4, src2, src5, src10_r, src21_r);
        FUNC1(src5, src4, src2, src5, src10_l, src21_l);

        FUNC3(src + 16, src_stride, src11, src8);
        src += (2 * src_stride);
        FUNC8(src11, src8);
        FUNC2(src11, src10, src8, src11, src76_r, src87_r);
        FUNC1(src11, src10, src8, src11, src76_l, src87_l);

        dst0_r = const_vec;
        FUNC0(src32_r, src10_r, filt0, filt1, dst0_r, dst0_r);
        dst0_l = const_vec;
        FUNC0(src32_l, src10_l, filt0, filt1, dst0_l, dst0_l);
        dst1_r = const_vec;
        FUNC0(src43_r, src21_r, filt0, filt1, dst1_r, dst1_r);
        dst1_l = const_vec;
        FUNC0(src43_l, src21_l, filt0, filt1, dst1_l, dst1_l);
        dst2_r = const_vec;
        FUNC0(src98_r, src76_r, filt0, filt1, dst2_r, dst2_r);
        dst2_l = const_vec;
        FUNC0(src98_l, src76_l, filt0, filt1, dst2_l, dst2_l);
        dst3_r = const_vec;
        FUNC0(src109_r, src87_r, filt0, filt1, dst3_r, dst3_r);
        dst3_l = const_vec;
        FUNC0(src109_l, src87_l, filt0, filt1, dst3_l, dst3_l);

        FUNC7(dst0_r, dst0_l, dst2_r, dst2_l, dst, 8);
        dst += dst_stride;
        FUNC7(dst1_r, dst1_l, dst3_r, dst3_l, dst, 8);
        dst += dst_stride;
    }
}