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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC10(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2;
    v16u8 mask0, mask1, mask2, out;
    v8i16 filt, out0, out1;

    mask0 = FUNC3(&mc_filt_mask_arr[16]);
    src -= 2;

    /* rearranging filter */
    filt = FUNC2(filter);
    FUNC6(filt, 0, 1, 2, filt0, filt1, filt2);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;

    FUNC1(src, src_stride, src0, src1, src2, src3);
    FUNC9(src0, src1, src2, src3);
    FUNC0(src0, src1, src2, src3, mask0, mask1, mask2,
                               filt0, filt1, filt2, out0, out1);
    FUNC7(out0, out1, 7);
    FUNC5(out0, out1, 7);
    out = FUNC4(out0, out1);
    FUNC8(out, 0, 1, 2, 3, dst, dst_stride);
}