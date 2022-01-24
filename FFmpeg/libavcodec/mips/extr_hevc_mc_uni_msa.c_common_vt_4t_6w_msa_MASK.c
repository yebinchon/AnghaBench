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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src10_r, src32_r, src21_r, src43_r, src54_r, src65_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r, filt0, filt1, filter_vec;

    src -= src_stride;

    filter_vec = FUNC4(filter);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    FUNC3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC12(src0, src1, src2);
    FUNC1(src1, src0, src2, src1, src10_r, src21_r);

    FUNC2(src, src_stride, src3, src4);
    src += (2 * src_stride);
    FUNC11(src3, src4);
    FUNC1(src3, src2, src4, src3, src32_r, src43_r);

    dst0_r = FUNC0(src10_r, src32_r, filt0, filt1);
    dst1_r = FUNC0(src21_r, src43_r, filt0, filt1);

    FUNC2(src, src_stride, src5, src6);
    src += (2 * src_stride);
    FUNC11(src5, src6);
    FUNC1(src5, src4, src6, src5, src54_r, src65_r);

    dst2_r = FUNC0(src32_r, src54_r, filt0, filt1);
    dst3_r = FUNC0(src43_r, src65_r, filt0, filt1);

    FUNC8(dst0_r, dst1_r, dst2_r, dst3_r, 6);
    FUNC6(dst0_r, dst1_r, dst2_r, dst3_r, 7);
    out0 = FUNC5(dst0_r, dst1_r);
    out1 = FUNC5(dst2_r, dst3_r);
    FUNC10(out0, 0, 2, dst, dst_stride);
    FUNC9(out0, 2, 6, dst + 4, dst_stride);
    FUNC10(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
    FUNC9(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
    dst += (4 * dst_stride);

    FUNC2(src, src_stride, src3, src4);
    src += (2 * src_stride);
    FUNC11(src3, src4);
    FUNC1(src3, src6, src4, src3, src32_r, src43_r);

    dst0_r = FUNC0(src54_r, src32_r, filt0, filt1);
    dst1_r = FUNC0(src65_r, src43_r, filt0, filt1);

    FUNC2(src, src_stride, src5, src6);
    src += (2 * src_stride);
    FUNC11(src5, src6);
    FUNC1(src5, src4, src6, src5, src54_r, src65_r);

    dst2_r = FUNC0(src32_r, src54_r, filt0, filt1);
    dst3_r = FUNC0(src43_r, src65_r, filt0, filt1);

    FUNC8(dst0_r, dst1_r, dst2_r, dst3_r, 6);
    FUNC6(dst0_r, dst1_r, dst2_r, dst3_r, 7);
    out0 = FUNC5(dst0_r, dst1_r);
    out1 = FUNC5(dst2_r, dst3_r);
    FUNC10(out0, 0, 2, dst, dst_stride);
    FUNC9(out0, 2, 6, dst + 4, dst_stride);
    FUNC10(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
    FUNC9(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
}