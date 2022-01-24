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
typedef  int /*<<< orphan*/  v8u16 ;
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 dst0, dst1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src87_r;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16u8 src2110, src4332, src6554, src8776, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    filt = FUNC7(filter);
    filt0 = (v16u8) FUNC13(filt, 0);

    FUNC6(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    src8 = FUNC5(src);

    FUNC8(dst, dst_stride, tp0, tp1, tp2, tp3);
    FUNC4(tp0, tp1, tp2, tp3, dst0);
    FUNC8(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
    FUNC4(tp0, tp1, tp2, tp3, dst1);
    FUNC2(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC2(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    FUNC3(src21_r, src10_r, src43_r, src32_r, src65_r, src54_r,
               src87_r, src76_r, src2110, src4332, src6554, src8776);
    FUNC1(src2110, src4332, src6554, src8776, filt0, filt0, filt0, filt0,
                tmp0, tmp1, tmp2, tmp3);
    FUNC11(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC10(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC9(tmp1, tmp0, tmp3, tmp2, src2110, src4332);
    FUNC0(src2110, dst0, src4332, dst1, src2110, src4332);
    FUNC12(src2110, src4332, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
}