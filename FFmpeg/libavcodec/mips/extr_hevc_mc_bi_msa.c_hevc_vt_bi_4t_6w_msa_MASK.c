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
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(uint8_t *src0_ptr,
                                 int32_t src_stride,
                                 int16_t *src1_ptr,
                                 int32_t src2_stride,
                                 uint8_t *dst,
                                 int32_t dst_stride,
                                 const int8_t *filter,
                                 int32_t height)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 in0, in1, in2, in3;
    v16i8 src10_r, src32_r, src21_r, src43_r, src54_r, src65_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= src_stride;

    const_vec = FUNC13(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    FUNC4(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC3(src0_ptr, src_stride, src3, src4);
    src0_ptr += (2 * src_stride);
    FUNC3(src0_ptr, src_stride, src5, src6);
    src0_ptr += (2 * src_stride);
    FUNC3(src0_ptr, src_stride, src7, src8);
    src0_ptr += (2 * src_stride);
    FUNC3(src0_ptr, src_stride, src9, src10);
    src0_ptr += (2 * src_stride);

    FUNC6(src1_ptr, src2_stride, in0, in1, in2, in3);
    src1_ptr += (4 * src2_stride);

    FUNC12(src0, src1, src2);
    FUNC11(src3, src4);
    FUNC11(src5, src6);
    FUNC11(src7, src8);
    FUNC11(src9, src10);

    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    FUNC2(src3, src2, src4, src3, src32_r, src43_r);

    dst0_r = const_vec;
    FUNC0(src10_r, src32_r, filt0, filt1, dst0_r, dst0_r);
    dst1_r = const_vec;
    FUNC0(src21_r, src43_r, filt0, filt1, dst1_r, dst1_r);

    FUNC2(src5, src4, src6, src5, src54_r, src65_r);

    dst2_r = const_vec;
    FUNC0(src32_r, src54_r, filt0, filt1, dst2_r, dst2_r);
    dst3_r = const_vec;
    FUNC0(src43_r, src65_r, filt0, filt1, dst3_r, dst3_r);

    FUNC1(in0, in1, in2, in3,
                      dst0_r, dst1_r, dst2_r, dst3_r, 7,
                      dst0_r, dst1_r, dst2_r, dst3_r);

    FUNC7(dst1_r, dst0_r, dst3_r, dst2_r, dst0_r, dst1_r);
    FUNC10(dst0_r, 0, 2, dst, dst_stride);
    FUNC9(dst0_r, 2, 6, dst + 4, dst_stride);
    FUNC10(dst1_r, 0, 2, dst + 2 * dst_stride, dst_stride);
    FUNC9(dst1_r, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
    dst += (4 * dst_stride);

    FUNC6(src1_ptr, src2_stride, in0, in1, in2, in3);
    src1_ptr += (4 * src2_stride);
    FUNC2(src7, src6, src8, src7, src32_r, src43_r);

    dst0_r = const_vec;
    FUNC0(src54_r, src32_r, filt0, filt1, dst0_r, dst0_r);
    dst1_r = const_vec;
    FUNC0(src65_r, src43_r, filt0, filt1, dst1_r, dst1_r);

    FUNC2(src9, src8, src10, src9, src54_r, src65_r);

    dst2_r = const_vec;
    FUNC0(src32_r, src54_r, filt0, filt1, dst2_r, dst2_r);
    dst3_r = const_vec;
    FUNC0(src43_r, src65_r, filt0, filt1, dst3_r, dst3_r);

    FUNC1(in0, in1, in2, in3,
                      dst0_r, dst1_r, dst2_r, dst3_r, 7,
                      dst0_r, dst1_r, dst2_r, dst3_r);

    FUNC7(dst1_r, dst0_r, dst3_r, dst2_r, dst0_r, dst1_r);
    FUNC10(dst0_r, 0, 2, dst, dst_stride);
    FUNC9(dst0_r, 2, 6, dst + 4, dst_stride);
    FUNC10(dst1_r, 0, 2, dst + 2 * dst_stride, dst_stride);
    FUNC9(dst1_r, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
    dst += (4 * dst_stride);
}