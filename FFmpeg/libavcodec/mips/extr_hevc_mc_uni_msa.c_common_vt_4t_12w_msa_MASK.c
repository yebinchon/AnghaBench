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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16u8 out0, out1;
    v16i8 src10_r, src32_r, src21_r, src43_r, src54_r, src65_r;
    v16i8 src10_l, src32_l, src54_l, src21_l, src43_l, src65_l;
    v16i8 src2110, src4332, src6554;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r, dst0_l, dst1_l, filt0, filt1;
    v8i16 filter_vec;

    src -= (1 * src_stride);

    filter_vec = FUNC5(filter);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    FUNC3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC14(src0, src1, src2);
    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    FUNC1(src1, src0, src2, src1, src10_l, src21_l);
    src2110 = (v16i8) FUNC16((v2i64) src21_l, (v2i64) src10_l);

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC4(src, src_stride, src3, src4, src5, src6);
        src += (4 * src_stride);

        FUNC15(src3, src4, src5, src6);
        FUNC2(src3, src2, src4, src3, src32_r, src43_r);
        FUNC1(src3, src2, src4, src3, src32_l, src43_l);
        src4332 = (v16i8) FUNC16((v2i64) src43_l, (v2i64) src32_l);
        FUNC2(src5, src4, src6, src5, src54_r, src65_r);
        FUNC1(src5, src4, src6, src5, src54_l, src65_l);
        src6554 = (v16i8) FUNC16((v2i64) src65_l, (v2i64) src54_l);

        dst0_r = FUNC0(src10_r, src32_r, filt0, filt1);
        dst1_r = FUNC0(src21_r, src43_r, filt0, filt1);
        dst0_l = FUNC0(src2110, src4332, filt0, filt1);
        dst2_r = FUNC0(src32_r, src54_r, filt0, filt1);
        dst3_r = FUNC0(src43_r, src65_r, filt0, filt1);
        dst1_l = FUNC0(src4332, src6554, filt0, filt1);

        FUNC11(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        FUNC10(dst0_l, dst1_l, 6);
        FUNC8(dst0_r, dst1_r, dst2_r, dst3_r, 7);
        FUNC7(dst0_l, dst1_l, 7);
        out0 = FUNC6(dst0_r, dst1_r);
        out1 = FUNC6(dst2_r, dst3_r);
        FUNC12(out0, out1, 0, 1, 0, 1, dst, dst_stride);
        out0 = FUNC6(dst0_l, dst1_l);
        FUNC13(out0, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);

        src2 = src6;
        src10_r = src54_r;
        src21_r = src65_r;
        src2110 = src6554;
    }
}