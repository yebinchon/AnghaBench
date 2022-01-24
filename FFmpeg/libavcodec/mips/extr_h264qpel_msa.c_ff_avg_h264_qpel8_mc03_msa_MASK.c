#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ptrdiff_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__,scalar_t__,TYPE_1__,scalar_t__,TYPE_1__,scalar_t__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int const) ; 

void FUNC17(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint64_t tp0, tp1, tp2, tp3;
    const int16_t filt_const0 = 0xfb01;
    const int16_t filt_const1 = 0x1414;
    const int16_t filt_const2 = 0x1fb;
    v16u8 dst0 = { 0 }, dst1 = { 0 }, dst2 = { 0 }, dst3 = { 0 };
    v16i8 src0, src1, src2, src3, src4, src7, src8, src9, src10, src11, src12;
    v16i8 src13, src14, tmp0, tmp1, tmp2, tmp3, src109_r;
    v16i8 src10_r, src32_r, src76_r, src98_r, src21_r, src43_r, src87_r;
    v16i8 filt0, filt1, filt2, out0, out1, out2, out3;
    v8i16 out0_r, out1_r, out2_r, out3_r, out4_r, out5_r, out6_r, out7_r;

    filt0 = (v16i8) FUNC16(filt_const0);
    filt1 = (v16i8) FUNC16(filt_const1);
    filt2 = (v16i8) FUNC16(filt_const2);

    src -= (stride * 2);

    FUNC5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);

    FUNC13(src0, src1, src2, src3, src4);
    FUNC2(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC6(src, stride, src7, src8, src9, src10, src11, src12, src13, src14);
    FUNC14(src7, src8, src9, src10, src11, src12, src13, src14);
    FUNC2(src7, src4, src8, src7, src9, src8, src10, src9, src76_r,
               src87_r, src98_r, src109_r);
    out0_r = FUNC0(src10_r, src32_r, src76_r, filt0, filt1, filt2);
    out1_r = FUNC0(src21_r, src43_r, src87_r, filt0, filt1, filt2);
    out2_r = FUNC0(src32_r, src76_r, src98_r, filt0, filt1, filt2);
    out3_r = FUNC0(src43_r, src87_r, src109_r, filt0, filt1, filt2);
    FUNC8(src4, src3, src8, src7, tmp0, tmp1);
    FUNC2(src11, src10, src12, src11, src13, src12, src14, src13, src10_r,
               src21_r, src32_r, src43_r);
    out4_r = FUNC0(src76_r, src98_r, src10_r, filt0, filt1, filt2);
    out5_r = FUNC0(src87_r, src109_r, src21_r, filt0, filt1, filt2);
    out6_r = FUNC0(src98_r, src10_r, src32_r, filt0, filt1, filt2);
    out7_r = FUNC0(src109_r, src21_r, src43_r, filt0, filt1, filt2);
    FUNC8(src10, src9, src12, src11, tmp2, tmp3);
    FUNC10(out0_r, out1_r, out2_r, out3_r, 5);
    FUNC10(out4_r, out5_r, out6_r, out7_r, 5);
    FUNC9(out0_r, out1_r, out2_r, out3_r, 7);
    FUNC9(out4_r, out5_r, out6_r, out7_r, 7);

    FUNC4(dst, stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, dst0);
    FUNC3(tp2, tp3, dst1);
    FUNC4(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, dst2);
    FUNC3(tp2, tp3, dst3);

    FUNC7(out1_r, out0_r, out3_r, out2_r, out0, out1);
    FUNC7(out5_r, out4_r, out7_r, out6_r, out2, out3);
    out0 = FUNC15(out0, tmp0);
    out1 = FUNC15(out1, tmp1);
    out2 = FUNC15(out2, tmp2);
    out3 = FUNC15(out3, tmp3);
    FUNC12(out0, out1, out2, out3);
    FUNC1(out0, dst0, out1, dst1, out2, dst2, out3, dst3, dst0, dst1,
                dst2, dst3);
    FUNC11(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}