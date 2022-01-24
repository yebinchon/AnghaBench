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
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int) ; 

void FUNC16(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    int32_t loop_cnt;
    int16_t filt_const0 = 0xfb01;
    int16_t filt_const1 = 0x1414;
    int16_t filt_const2 = 0x1fb;
    v16u8 res0, res1, res2, res3, dst0, dst1, dst2, dst3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16i8 src87_r, src10_l, src32_l, src54_l, src76_l, src21_l, src43_l;
    v16i8 src65_l, src87_l, filt0, filt1, filt2;
    v8i16 out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l;

    filt0 = (v16i8) FUNC15(filt_const0);
    filt1 = (v16i8) FUNC15(filt_const1);
    filt2 = (v16i8) FUNC15(filt_const2);

    src -= (stride * 2);

    FUNC5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);

    FUNC13(src0, src1, src2, src3, src4);
    FUNC3(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC2(src1, src0, src2, src1, src3, src2, src4, src3, src10_l, src21_l,
               src32_l, src43_l);

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC4(src, stride, src5, src6, src7, src8);
        src += (4 * stride);

        FUNC11(src5, src6, src7, src8);
        FUNC3(src5, src4, src6, src5, src7, src6, src8, src7, src54_r,
                   src65_r, src76_r, src87_r);
        FUNC2(src5, src4, src6, src5, src7, src6, src8, src7, src54_l,
                   src65_l, src76_l, src87_l);
        out0_r = FUNC0(src10_r, src32_r, src54_r, filt0, filt1, filt2);
        out1_r = FUNC0(src21_r, src43_r, src65_r, filt0, filt1, filt2);
        out2_r = FUNC0(src32_r, src54_r, src76_r, filt0, filt1, filt2);
        out3_r = FUNC0(src43_r, src65_r, src87_r, filt0, filt1, filt2);
        out0_l = FUNC0(src10_l, src32_l, src54_l, filt0, filt1, filt2);
        out1_l = FUNC0(src21_l, src43_l, src65_l, filt0, filt1, filt2);
        out2_l = FUNC0(src32_l, src54_l, src76_l, filt0, filt1, filt2);
        out3_l = FUNC0(src43_l, src65_l, src87_l, filt0, filt1, filt2);
        FUNC9(out0_r, out1_r, out2_r, out3_r, 5);
        FUNC8(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC9(out0_l, out1_l, out2_l, out3_l, 5);
        FUNC8(out0_l, out1_l, out2_l, out3_l, 7);
        FUNC7(out0_l, out0_r, out1_l, out1_r, out2_l, out2_r, out3_l,
                    out3_r, res0, res1, res2, res3);
        res0 = (v16u8) FUNC14((v16i8) res0, src2);
        res1 = (v16u8) FUNC14((v16i8) res1, src3);
        res2 = (v16u8) FUNC14((v16i8) res2, src4);
        res3 = (v16u8) FUNC14((v16i8) res3, src5);
        FUNC6(dst, stride, dst0, dst1, dst2, dst3);
        FUNC12(res0, res1, res2, res3);
        FUNC1(res0, dst0, res1, dst1, dst0, dst1);
        FUNC1(res2, dst2, res3, dst3, dst2, dst3);
        FUNC10(dst0, dst1, dst2, dst3, dst, stride);
        dst += (4 * stride);

        src10_r = src54_r;
        src32_r = src76_r;
        src21_r = src65_r;
        src43_r = src87_r;
        src10_l = src54_l;
        src32_l = src76_l;
        src21_l = src65_l;
        src43_l = src87_l;
        src2 = src6;
        src3 = src7;
        src4 = src8;
    }
}