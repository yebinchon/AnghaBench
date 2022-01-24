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
typedef  scalar_t__ v8u16 ;
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, src4;
    v16u8 dst0, out, filt0, src2110, src4332;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v8i16 filt;
    v8u16 tmp0, tmp1;

    filt = FUNC6(filter);
    filt0 = (v16u8) FUNC13(filt, 0);

    FUNC5(src, src_stride, src0, src1, src2, src3);
    src += (4 * src_stride);

    src4 = FUNC4(src);
    src += src_stride;

    FUNC7(dst, dst_stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, dst0);
    FUNC1(src1, src0, src2, src1, src3, src2, src4, src3,
               src10_r, src21_r, src32_r, src43_r);
    FUNC2(src21_r, src10_r, src43_r, src32_r, src2110, src4332);
    FUNC0(src2110, src4332, filt0, filt0, tmp0, tmp1);
    FUNC9(tmp0, tmp1, 7);
    FUNC8(tmp0, tmp1, 7);

    out = (v16u8) FUNC12((v16i8) tmp1, (v16i8) tmp0);
    out = FUNC11(out, dst0);

    FUNC10(out, 0, 1, 2, 3, dst, dst_stride);
}