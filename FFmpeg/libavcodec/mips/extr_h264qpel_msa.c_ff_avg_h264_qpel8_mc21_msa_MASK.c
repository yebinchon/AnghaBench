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
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int const) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC19(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    const int32_t filt_const0 = 0xfffb0001;
    const int32_t filt_const1 = 0x140014;
    const int32_t filt_const2 = 0x1fffb;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 dst0 = { 0 }, dst1 = { 0 }, out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src11, src12, mask0, mask1, mask2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, hz_out9, hz_out10, hz_out11, hz_out12;
    v8i16 hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r, hz_out54_r;
    v8i16 hz_out65_r, hz_out76_r, hz_out87_r, hz_out89_r, hz_out910_r;
    v8i16 hz_out1110_r, hz_out1211_r, tmp0, tmp1, tmp2, tmp3;
    v8i16 hz_out10_l, hz_out21_l, hz_out32_l, hz_out43_l, hz_out54_l;
    v8i16 hz_out65_l, hz_out76_l, hz_out87_l, hz_out89_l, hz_out910_l;
    v8i16 hz_out1110_l, hz_out1211_l, filt0, filt1, filt2;
    v4i32 tmp0_w, tmp1_w;

    FUNC7(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    filt0 = (v8i16) FUNC17(filt_const0);
    filt1 = (v8i16) FUNC17(filt_const1);
    filt2 = (v8i16) FUNC17(filt_const2);

    src -= ((2 * stride) + 2);

    FUNC9(src, stride, src0, src1, src2, src3, src4);
    FUNC15(src0, src1, src2, src3, src4);
    src += (5 * stride);

    hz_out0 = FUNC1(src0, src0, mask0, mask1, mask2);
    hz_out1 = FUNC1(src1, src1, mask0, mask1, mask2);
    hz_out2 = FUNC1(src2, src2, mask0, mask1, mask2);
    hz_out3 = FUNC1(src3, src3, mask0, mask1, mask2);
    hz_out4 = FUNC1(src4, src4, mask0, mask1, mask2);

    FUNC8(src, stride, src5, src6, src7, src8);
    src += (4 * stride);
    FUNC14(src5, src6, src7, src8);

    hz_out5 = FUNC1(src5, src5, mask0, mask1, mask2);
    hz_out6 = FUNC1(src6, src6, mask0, mask1, mask2);
    hz_out7 = FUNC1(src7, src7, mask0, mask1, mask2);
    hz_out8 = FUNC1(src8, src8, mask0, mask1, mask2);

    FUNC4(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r);
    FUNC3(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_l, hz_out21_l, hz_out32_l, hz_out43_l);
    FUNC4(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_r, hz_out65_r, hz_out76_r, hz_out87_r);
    FUNC3(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_l, hz_out65_l, hz_out76_l, hz_out87_l);

    tmp0_w = FUNC0(hz_out10_r, hz_out32_r, hz_out54_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out10_l, hz_out32_l, hz_out54_l, filt0, filt1,
                            filt2);
    tmp0 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = FUNC0(hz_out21_r, hz_out43_r, hz_out65_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out21_l, hz_out43_l, hz_out65_l, filt0, filt1,
                            filt2);
    tmp1 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = FUNC0(hz_out32_r, hz_out54_r, hz_out76_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out32_l, hz_out54_l, hz_out76_l, filt0, filt1,
                            filt2);
    tmp2 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = FUNC0(hz_out43_r, hz_out65_r, hz_out87_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out43_l, hz_out65_l, hz_out87_l, filt0, filt1,
                            filt2);
    tmp3 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);

    FUNC12(hz_out2, hz_out3, hz_out4, hz_out5, 5);
    FUNC11(hz_out2, hz_out3, hz_out4, hz_out5, 7);

    FUNC6(dst, stride, tp0, tp1, tp2, tp3);
    FUNC5(tp0, tp1, dst0);
    FUNC5(tp2, tp3, dst1);

    tmp0 = FUNC16(tmp0, hz_out2);
    tmp1 = FUNC16(tmp1, hz_out3);
    tmp2 = FUNC16(tmp2, hz_out4);
    tmp3 = FUNC16(tmp3, hz_out5);

    out0 = FUNC10(tmp0, tmp1);
    out1 = FUNC10(tmp2, tmp3);
    FUNC2(out0, dst0, out1, dst1, dst0, dst1);
    FUNC13(dst0, dst1, 0, 1, 0, 1, dst, stride);
    dst += (4 * stride);

    FUNC8(src, stride, src9, src10, src11, src12);
    FUNC14(src9, src10, src11, src12);
    hz_out9 = FUNC1(src9, src9, mask0, mask1, mask2);
    hz_out10 = FUNC1(src10, src10, mask0, mask1, mask2);
    hz_out11 = FUNC1(src11, src11, mask0, mask1, mask2);
    hz_out12 = FUNC1(src12, src12, mask0, mask1, mask2);
    FUNC4(hz_out9, hz_out8, hz_out10, hz_out9, hz_out11, hz_out10,
               hz_out12, hz_out11, hz_out89_r, hz_out910_r, hz_out1110_r,
               hz_out1211_r);
    FUNC3(hz_out9, hz_out8, hz_out10, hz_out9, hz_out11, hz_out10,
               hz_out12, hz_out11, hz_out89_l, hz_out910_l, hz_out1110_l,
               hz_out1211_l);
    tmp0_w = FUNC0(hz_out54_r, hz_out76_r, hz_out89_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out54_l, hz_out76_l, hz_out89_l, filt0, filt1,
                            filt2);
    tmp0 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = FUNC0(hz_out65_r, hz_out87_r, hz_out910_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out65_l, hz_out87_l, hz_out910_l, filt0, filt1,
                            filt2);
    tmp1 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = FUNC0(hz_out76_r, hz_out89_r, hz_out1110_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out76_l, hz_out89_l, hz_out1110_l, filt0, filt1,
                            filt2);
    tmp2 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);
    tmp0_w = FUNC0(hz_out87_r, hz_out910_r, hz_out1211_r, filt0, filt1,
                            filt2);
    tmp1_w = FUNC0(hz_out87_l, hz_out910_l, hz_out1211_l, filt0, filt1,
                            filt2);
    tmp3 = FUNC18((v8i16) tmp1_w, (v8i16) tmp0_w);

    FUNC12(hz_out6, hz_out7, hz_out8, hz_out9, 5);
    FUNC11(hz_out6, hz_out7, hz_out8, hz_out9, 7);

    FUNC6(dst, stride, tp0, tp1, tp2, tp3);
    FUNC5(tp0, tp1, dst0);
    FUNC5(tp2, tp3, dst1);

    tmp0 = FUNC16(tmp0, hz_out6);
    tmp1 = FUNC16(tmp1, hz_out7);
    tmp2 = FUNC16(tmp2, hz_out8);
    tmp3 = FUNC16(tmp3, hz_out9);

    out0 = FUNC10(tmp0, tmp1);
    out1 = FUNC10(tmp2, tmp3);
    FUNC2(out0, dst0, out1, dst1, dst0, dst1);
    FUNC13(dst0, dst1, 0, 1, 0, 1, dst, stride);
}