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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int const) ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    const int16_t filt_const0 = 0xfb01;
    const int16_t filt_const1 = 0x1414;
    const int16_t filt_const2 = 0x1fb;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src11, src12, src10_r, src32_r, src54_r, src65_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src87_r, src109_r, src1211_r, src1110_r;
    v16i8 tmp0, tmp1, tmp2, tmp3, filt0, filt1, filt2, out0, out1, out2, out3;
    v8i16 out0_r, out1_r, out2_r, out3_r, out4_r, out5_r, out6_r, out7_r;

    filt0 = (v16i8) FUNC13(filt_const0);
    filt1 = (v16i8) FUNC13(filt_const1);
    filt2 = (v16i8) FUNC13(filt_const2);

    src -= (stride * 2);

    FUNC2(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    FUNC3(src, stride, src5, src6, src7, src8, src9, src10, src11, src12);
    FUNC11(src5, src6, src7, src8, src9, src10, src11, src12);
    FUNC10(src0, src1, src2, src3, src4);
    FUNC1(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC1(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    FUNC1(src9, src8, src10, src9, src11, src10, src12, src11, src98_r,
               src109_r, src1110_r, src1211_r);
    out0_r = FUNC0(src10_r, src32_r, src54_r, filt0, filt1, filt2);
    out1_r = FUNC0(src21_r, src43_r, src65_r, filt0, filt1, filt2);
    out2_r = FUNC0(src32_r, src54_r, src76_r, filt0, filt1, filt2);
    out3_r = FUNC0(src43_r, src65_r, src87_r, filt0, filt1, filt2);
    out4_r = FUNC0(src54_r, src76_r, src98_r, filt0, filt1, filt2);
    out5_r = FUNC0(src65_r, src87_r, src109_r, filt0, filt1, filt2);
    out6_r = FUNC0(src76_r, src98_r, src1110_r, filt0, filt1, filt2);
    out7_r = FUNC0(src87_r, src109_r, src1211_r, filt0, filt1, filt2);
    FUNC5(src3, src2, src5, src4, tmp0, tmp1);
    FUNC5(src7, src6, src9, src8, tmp2, tmp3);
    FUNC7(out0_r, out1_r, out2_r, out3_r, 5);
    FUNC7(out4_r, out5_r, out6_r, out7_r, 5);
    FUNC6(out0_r, out1_r, out2_r, out3_r, 7);
    FUNC6(out4_r, out5_r, out6_r, out7_r, 7);
    FUNC4(out1_r, out0_r, out3_r, out2_r, out0, out1);
    FUNC4(out5_r, out4_r, out7_r, out6_r, out2, out3);
    out0 = FUNC12(out0, tmp0);
    out1 = FUNC12(out1, tmp1);
    out2 = FUNC12(out2, tmp2);
    out3 = FUNC12(out3, tmp3);
    FUNC9(out0, out1, out2, out3);
    FUNC8(out0, out1, out2, out3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}