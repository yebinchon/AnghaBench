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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC10(uint8_t *src, int32_t src_stride,
                                  uint8_t *dst, int32_t dst_stride,
                                  const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 filt0, filt1, mask0, mask1;
    v16u8 out;
    v8i16 filt, out0, out1, out2, out3;

    mask0 = FUNC1(&mc_filt_mask_arr[16]);
    src -= 1;

    /* rearranging filter */
    filt = FUNC3(filter);
    FUNC6(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    FUNC2(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    FUNC9(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC0(src0, src1, src2, src3, mask0, mask1,
                               filt0, filt1, out0, out1);
    FUNC0(src4, src5, src6, src7, mask0, mask1,
                               filt0, filt1, out2, out3);
    FUNC7(out0, out1, out2, out3, 7);
    FUNC5(out0, out1, out2, out3, 7);
    out = FUNC4(out0, out1);
    FUNC8(out, 0, 1, 2, 3, dst, dst_stride);
    dst += (4 * dst_stride);
    out = FUNC4(out2, out3);
    FUNC8(out, 0, 1, 2, 3, dst, dst_stride);
    dst += (4 * dst_stride);

    FUNC2(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    FUNC9(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC0(src0, src1, src2, src3, mask0, mask1,
                               filt0, filt1, out0, out1);
    FUNC0(src4, src5, src6, src7, mask0, mask1,
                               filt0, filt1, out2, out3);
    FUNC7(out0, out1, out2, out3, 7);
    FUNC5(out0, out1, out2, out3, 7);
    out = FUNC4(out0, out1);
    FUNC8(out, 0, 1, 2, 3, dst, dst_stride);
    dst += (4 * dst_stride);
    out = FUNC4(out2, out3);
    FUNC8(out, 0, 1, 2, 3, dst, dst_stride);
}