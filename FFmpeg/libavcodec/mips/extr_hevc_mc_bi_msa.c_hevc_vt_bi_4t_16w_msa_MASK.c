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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ *,int) ; 
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
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 in0, in1, in2, in3;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v16i8 src10_l, src32_l, src21_l, src43_l;
    v8i16 dst0_r, dst1_r, dst0_l, dst1_l;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= src_stride;

    const_vec = FUNC13(128);
    const_vec <<= 6;

    filter_vec = FUNC6(filter);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    FUNC5(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC12(src0, src1, src2);
    FUNC3(src1, src0, src2, src1, src10_r, src21_r);
    FUNC2(src1, src0, src2, src1, src10_l, src21_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC4(src0_ptr, src_stride, src3, src4);
        src0_ptr += (2 * src_stride);
        FUNC7(src1_ptr, src2_stride, in0, in1);
        FUNC7((src1_ptr + 8), src2_stride, in2, in3);
        src1_ptr += (2 * src2_stride);
        FUNC11(src3, src4);
        FUNC3(src3, src2, src4, src3, src32_r, src43_r);
        FUNC2(src3, src2, src4, src3, src32_l, src43_l);

        dst0_r = const_vec;
        FUNC0(src10_r, src32_r, filt0, filt1, dst0_r, dst0_r);
        dst1_r = const_vec;
        FUNC0(src21_r, src43_r, filt0, filt1, dst1_r, dst1_r);
        dst0_l = const_vec;
        FUNC0(src10_l, src32_l, filt0, filt1, dst0_l, dst0_l);
        dst1_l = const_vec;
        FUNC0(src21_l, src43_l, filt0, filt1, dst1_l, dst1_l);
        FUNC1(in0, in1, in2, in3,
                          dst0_r, dst1_r, dst0_l, dst1_l, 7,
                          dst0_r, dst1_r, dst0_l, dst1_l);

        FUNC8(dst0_l, dst0_r, dst1_l, dst1_r, dst0_r, dst1_r);
        FUNC10(dst0_r, dst1_r, dst, dst_stride);
        dst += (2 * dst_stride);

        FUNC4(src0_ptr, src_stride, src5, src2);
        src0_ptr += (2 * src_stride);
        FUNC7(src1_ptr, src2_stride, in0, in1);
        FUNC7((src1_ptr + 8), src2_stride, in2, in3);
        src1_ptr += (2 * src2_stride);
        FUNC11(src5, src2);
        FUNC3(src5, src4, src2, src5, src10_r, src21_r);
        FUNC2(src5, src4, src2, src5, src10_l, src21_l);

        dst0_r = const_vec;
        FUNC0(src32_r, src10_r, filt0, filt1, dst0_r, dst0_r);
        dst0_l = const_vec;
        FUNC0(src32_l, src10_l, filt0, filt1, dst0_l, dst0_l);
        dst1_r = const_vec;
        FUNC0(src43_r, src21_r, filt0, filt1, dst1_r, dst1_r);
        dst1_l = const_vec;
        FUNC0(src43_l, src21_l, filt0, filt1, dst1_l, dst1_l);
        FUNC1(in0, in1, in2, in3,
                          dst0_r, dst1_r, dst0_l, dst1_l, 7,
                          dst0_r, dst1_r, dst0_l, dst1_l);

        FUNC8(dst0_l, dst0_r, dst1_l, dst1_r, dst0_r, dst1_r);
        FUNC10(dst0_r, dst1_r, dst, dst_stride);
        dst += (2 * dst_stride);
    }
}