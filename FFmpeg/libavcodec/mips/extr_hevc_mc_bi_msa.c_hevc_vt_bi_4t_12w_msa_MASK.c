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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC19(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 src10_r, src32_r, src21_r, src43_r, src54_r, src65_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v16i8 src10_l, src32_l, src54_l, src21_l, src43_l, src65_l;
    v16i8 src2110, src4332, src6554;
    v8i16 dst0_l, dst1_l, filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= (1 * src_stride);

    const_vec = FUNC17(128);
    const_vec <<= 6;

    filter_vec = FUNC8(filter);
    FUNC11(filter_vec, 0, 1, filt0, filt1);

    FUNC7(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC15(src0, src1, src2);
    FUNC4(src1, src0, src2, src1, src10_r, src21_r);
    FUNC3(src1, src0, src2, src1, src10_l, src21_l);
    src2110 = (v16i8) FUNC16((v2i64) src21_l, (v2i64) src10_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC6(src0_ptr, src_stride, src3, src4);
        src0_ptr += (2 * src_stride);
        FUNC6(src0_ptr, src_stride, src5, src6);
        src0_ptr += (2 * src_stride);
        FUNC9(src1_ptr, src2_stride, in0, in1, in2, in3);
        FUNC9((src1_ptr + 8), src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);
        FUNC5(in5, in4, in7, in6, in4, in5);
        FUNC14(src3, src4);
        FUNC14(src5, src6);

        FUNC4(src3, src2, src4, src3, src32_r, src43_r);
        FUNC3(src3, src2, src4, src3, src32_l, src43_l);
        src4332 = (v16i8) FUNC16((v2i64) src43_l, (v2i64) src32_l);
        FUNC4(src5, src4, src6, src5, src54_r, src65_r);
        FUNC3(src5, src4, src6, src5, src54_l, src65_l);
        src6554 = (v16i8) FUNC16((v2i64) src65_l, (v2i64) src54_l);

        dst0_r = const_vec;
        FUNC0(src10_r, src32_r, filt0, filt1, dst0_r, dst0_r);
        dst1_r = const_vec;
        FUNC0(src21_r, src43_r, filt0, filt1, dst1_r, dst1_r);
        dst0_l = const_vec;
        FUNC0(src2110, src4332, filt0, filt1, dst0_l, dst0_l);
        dst2_r = const_vec;
        FUNC0(src32_r, src54_r, filt0, filt1, dst2_r, dst2_r);
        dst3_r = const_vec;
        FUNC0(src43_r, src65_r, filt0, filt1, dst3_r, dst3_r);
        dst1_l = const_vec;
        FUNC0(src4332, src6554, filt0, filt1, dst1_l, dst1_l);
        FUNC2(in0, in1, in2, in3,
                          dst0_r, dst1_r, dst2_r, dst3_r, 7,
                          dst0_r, dst1_r, dst2_r, dst3_r);
        FUNC1(in4, in5, dst0_l, dst1_l, 7, dst0_l, dst1_l);

        FUNC10(dst1_r, dst0_r, dst3_r, dst2_r, dst0_r, dst1_r);
        dst0_l = (v8i16) FUNC18((v16i8) dst1_l, (v16i8) dst0_l);
        FUNC12(dst0_r, dst1_r, 0, 1, 0, 1, dst, dst_stride);
        FUNC13(dst0_l, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);

        src2 = src6;
        src10_r = src54_r;
        src21_r = src65_r;
        src2110 = src6554;
    }
}