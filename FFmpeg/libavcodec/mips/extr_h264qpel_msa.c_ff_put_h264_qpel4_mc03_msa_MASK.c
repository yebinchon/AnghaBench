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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    int16_t filt_const0 = 0xfb01;
    int16_t filt_const1 = 0x1414;
    int16_t filt_const2 = 0x1fb;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16i8 src87_r, src2110, src4332, src6554, src8776, filt0, filt1, filt2;
    v8i16 out10, out32;

    filt0 = (v16i8) FUNC11(filt_const0);
    filt1 = (v16i8) FUNC11(filt_const1);
    filt2 = (v16i8) FUNC11(filt_const2);

    src -= (stride * 2);

    FUNC4(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    FUNC1(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC2(src21_r, src10_r, src43_r, src32_r, src2110, src4332);
    FUNC9(src2110, src4332);
    FUNC3(src, stride, src5, src6, src7, src8);
    FUNC1(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    FUNC2(src65_r, src54_r, src87_r, src76_r, src6554, src8776);
    FUNC9(src6554, src8776);
    out10 = FUNC0(src2110, src4332, src6554, filt0, filt1, filt2);
    out32 = FUNC0(src4332, src6554, src8776, filt0, filt1, filt2);
    FUNC7(out10, out32, 5);
    FUNC6(out10, out32, 7);
    out = FUNC5(out10, out32);
    src32_r = (v16i8) FUNC13((v4i32) src3, 1, (v4i32) src4);
    src54_r = (v16i8) FUNC13((v4i32) src5, 1, (v4i32) src6);
    src32_r = (v16i8) FUNC12((v2i64) src32_r, 1, (v2i64) src54_r);
    out = FUNC10(out, (v16u8) src32_r);
    FUNC8(out, 0, 1, 2, 3, dst, stride);
}