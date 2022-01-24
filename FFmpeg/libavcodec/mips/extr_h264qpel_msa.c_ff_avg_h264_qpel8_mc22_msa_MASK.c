#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ v8i16 ;
typedef  scalar_t__ v4i32 ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ptrdiff_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int const) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC16(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    const int32_t filt_const0 = 0xfffb0001;
    const int32_t filt_const1 = 0x140014;
    const int32_t filt_const2 = 0x1fffb;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 out0, out1, dst0 = { 0 }, dst1 = { 0 };
    v16i8 src0, src1, src2, src3, src4, mask0, mask1, mask2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, hz_out9, hz_out10, hz_out11, hz_out12;
    v8i16 hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r, hz_out54_r;
    v8i16 hz_out65_r, hz_out76_r, hz_out87_r, hz_out89_r, hz_out910_r;
    v8i16 hz_out1110_r, hz_out1211_r, res0, res1, res2, res3;
    v8i16 hz_out10_l, hz_out21_l, hz_out32_l, hz_out43_l, hz_out54_l;
    v8i16 hz_out65_l, hz_out76_l, hz_out87_l, hz_out89_l, hz_out910_l;
    v8i16 hz_out1110_l, hz_out1211_l, filt0, filt1, filt2;
    v4i32 tmp0, tmp1;

    filt0 = (v8i16) FUNC14(filt_const0);
    filt1 = (v8i16) FUNC14(filt_const1);
    filt2 = (v8i16) FUNC14(filt_const2);

    FUNC7(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    src -= ((2 * stride) + 2);
    FUNC9(src, stride, src0, src1, src2, src3, src4);
    FUNC13(src0, src1, src2, src3, src4);
    src += (5 * stride);

    hz_out0 = FUNC1(src0, src0, mask0, mask1, mask2);
    hz_out1 = FUNC1(src1, src1, mask0, mask1, mask2);
    hz_out2 = FUNC1(src2, src2, mask0, mask1, mask2);
    hz_out3 = FUNC1(src3, src3, mask0, mask1, mask2);
    hz_out4 = FUNC1(src4, src4, mask0, mask1, mask2);

    FUNC8(src, stride, src0, src1, src2, src3);
    FUNC12(src0, src1, src2, src3);
    src += (4 * stride);
    hz_out5 = FUNC1(src0, src0, mask0, mask1, mask2);
    hz_out6 = FUNC1(src1, src1, mask0, mask1, mask2);
    hz_out7 = FUNC1(src2, src2, mask0, mask1, mask2);
    hz_out8 = FUNC1(src3, src3, mask0, mask1, mask2);
    FUNC4(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r);
    FUNC3(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_l, hz_out21_l, hz_out32_l, hz_out43_l);
    FUNC4(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_r, hz_out65_r, hz_out76_r, hz_out87_r);
    FUNC3(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_l, hz_out65_l, hz_out76_l, hz_out87_l);

    tmp0 = FUNC0(hz_out10_r, hz_out32_r, hz_out54_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out10_l, hz_out32_l, hz_out54_l, filt0, filt1,
                          filt2);
    res0 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out21_r, hz_out43_r, hz_out65_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out21_l, hz_out43_l, hz_out65_l, filt0, filt1,
                          filt2);
    res1 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out32_r, hz_out54_r, hz_out76_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out32_l, hz_out54_l, hz_out76_l, filt0, filt1,
                          filt2);
    res2 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out43_r, hz_out65_r, hz_out87_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out43_l, hz_out65_l, hz_out87_l, filt0, filt1,
                          filt2);
    res3 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    FUNC6(dst, stride, tp0, tp1, tp2, tp3);
    FUNC5(tp0, tp1, dst0);
    FUNC5(tp2, tp3, dst1);
    out0 = FUNC10(res0, res1);
    out1 = FUNC10(res2, res3);
    FUNC2(out0, dst0, out1, dst1, dst0, dst1);
    FUNC11(dst0, dst1, 0, 1, 0, 1, dst, stride);
    dst += (4 * stride);

    FUNC8(src, stride, src0, src1, src2, src3);
    FUNC12(src0, src1, src2, src3);
    hz_out9 = FUNC1(src0, src0, mask0, mask1, mask2);
    hz_out10 = FUNC1(src1, src1, mask0, mask1, mask2);
    hz_out11 = FUNC1(src2, src2, mask0, mask1, mask2);
    hz_out12 = FUNC1(src3, src3, mask0, mask1, mask2);
    FUNC4(hz_out9, hz_out8, hz_out10, hz_out9, hz_out11, hz_out10,
               hz_out12, hz_out11, hz_out89_r, hz_out910_r, hz_out1110_r,
               hz_out1211_r);
    FUNC3(hz_out9, hz_out8, hz_out10, hz_out9, hz_out11, hz_out10,
               hz_out12, hz_out11, hz_out89_l, hz_out910_l, hz_out1110_l,
               hz_out1211_l);
    tmp0 = FUNC0(hz_out54_r, hz_out76_r, hz_out89_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out54_l, hz_out76_l, hz_out89_l, filt0, filt1,
                          filt2);
    res0 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out65_r, hz_out87_r, hz_out910_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out65_l, hz_out87_l, hz_out910_l, filt0, filt1,
                          filt2);
    res1 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out76_r, hz_out89_r, hz_out1110_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out76_l, hz_out89_l, hz_out1110_l, filt0, filt1,
                          filt2);
    res2 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out87_r, hz_out910_r, hz_out1211_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out87_l, hz_out910_l, hz_out1211_l, filt0, filt1,
                          filt2);
    res3 = FUNC15((v8i16) tmp1, (v8i16) tmp0);
    FUNC6(dst, stride, tp0, tp1, tp2, tp3);
    FUNC5(tp0, tp1, dst0);
    FUNC5(tp2, tp3, dst1);
    out0 = FUNC10(res0, res1);
    out1 = FUNC10(res2, res3);
    FUNC2(out0, dst0, out1, dst1, dst0, dst1);
    FUNC11(dst0, dst1, 0, 1, 0, 1, dst, stride);
}