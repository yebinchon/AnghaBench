#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ v8i16 ;
typedef  scalar_t__ v4i32 ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ptrdiff_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC16 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC17 (int const) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC19(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint32_t tp0, tp1, tp2, tp3;
    const int32_t filt_const0 = 0xfffb0001;
    const int32_t filt_const1 = 0x140014;
    const int32_t filt_const2 = 0x1fffb;
    v16u8 res, out = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 mask0, mask1, mask2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, dst0, dst1, filt0, filt1, filt2;
    v8i16 hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r, hz_out54_r;
    v8i16 hz_out65_r, hz_out76_r, hz_out87_r;
    v4i32 tmp0, tmp1;

    FUNC4(&luma_mask_arr[48], 16, mask0, mask1, mask2);

    filt0 = (v8i16) FUNC17(filt_const0);
    filt1 = (v8i16) FUNC17(filt_const1);
    filt2 = (v8i16) FUNC17(filt_const2);

    src -= ((2 * stride) + 2);

    FUNC6(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    FUNC5(src, stride, src5, src6, src7, src8);

    FUNC14(src0, src1, src2, src3, src4);
    FUNC13(src5, src6, src7, src8);

    hz_out0 = FUNC1(src0, src1, mask0, mask1, mask2);
    hz_out2 = FUNC1(src2, src3, mask0, mask1, mask2);
    hz_out4 = FUNC1(src4, src5, mask0, mask1, mask2);
    hz_out6 = FUNC1(src6, src7, mask0, mask1, mask2);
    hz_out8 = FUNC1(src8, src8, mask0, mask1, mask2);
    FUNC9(hz_out0, hz_out0, hz_out2, hz_out2, hz_out1, hz_out3);
    FUNC9(hz_out4, hz_out4, hz_out6, hz_out6, hz_out5, hz_out7);

    FUNC2(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r);
    FUNC2(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_r, hz_out65_r, hz_out76_r, hz_out87_r);

    tmp0 = FUNC0(hz_out10_r, hz_out32_r, hz_out54_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out21_r, hz_out43_r, hz_out65_r, filt0, filt1,
                          filt2);
    dst0 = FUNC18((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = FUNC0(hz_out32_r, hz_out54_r, hz_out76_r, filt0, filt1,
                          filt2);
    tmp1 = FUNC0(hz_out43_r, hz_out65_r, hz_out87_r, filt0, filt1,
                          filt2);
    dst1 = FUNC18((v8i16) tmp1, (v8i16) tmp0);

    FUNC11(hz_out2, hz_out4, 5);
    FUNC10(hz_out2, hz_out4, 7);

    dst0 = FUNC15(dst0, hz_out2);
    dst1 = FUNC15(dst1, hz_out4);
    FUNC7(dst, stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, out);
    res = FUNC8(dst0, dst1);
    res = FUNC16(res, out);
    FUNC12(res, 0, 1, 2, 3, dst, stride);
}