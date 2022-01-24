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
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ptrdiff_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC12 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint32_t tp0, tp1, tp2, tp3;
    int16_t filt_const0 = 0xfb01;
    int16_t filt_const1 = 0x1414;
    int16_t filt_const2 = 0x1fb;
    v16u8 res, dst0 = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16i8 src87_r, src2110, src4332, src6554, src8776, filt0, filt1, filt2;
    v8i16 out10, out32;

    filt0 = (v16i8) FUNC13(filt_const0);
    filt1 = (v16i8) FUNC13(filt_const1);
    filt2 = (v16i8) FUNC13(filt_const2);

    src -= (stride * 2);
    FUNC5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);

    FUNC1(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC2(src21_r, src10_r, src43_r, src32_r, src2110, src4332);
    FUNC11(src2110, src4332);
    FUNC4(src, stride, src5, src6, src7, src8);
    FUNC1(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    FUNC2(src65_r, src54_r, src87_r, src76_r, src6554, src8776);
    FUNC11(src6554, src8776);
    out10 = FUNC0(src2110, src4332, src6554, filt0, filt1, filt2);
    out32 = FUNC0(src4332, src6554, src8776, filt0, filt1, filt2);
    FUNC9(out10, out32, 5);
    FUNC8(out10, out32, 7);
    FUNC6(dst, stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, dst0);
    res = FUNC7(out10, out32);
    dst0 = FUNC12(res, dst0);
    FUNC10(dst0, 0, 1, 2, 3, dst, stride);
}