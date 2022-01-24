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
typedef  scalar_t__ v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int const) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

__attribute__((used)) static void FUNC14(const uint8_t *src_x, const uint8_t *src_y,
                                    uint8_t *dst, int32_t stride)
{
    const int16_t filt_const0 = 0xfb01;
    const int16_t filt_const1 = 0x1414;
    const int16_t filt_const2 = 0x1fb;
    v16u8 out;
    v16i8 src_hz0, src_hz1, src_hz2, src_hz3, src_vt7, src_vt8;
    v16i8 src_vt0, src_vt1, src_vt2, src_vt3, src_vt4, src_vt5, src_vt6;
    v16i8 src_vt10_r, src_vt32_r, src_vt54_r, src_vt76_r;
    v16i8 mask0, mask1, mask2, filt0, filt1, filt2;
    v8i16 hz_out0, hz_out1, vt_out0, vt_out1, out0, out1;

    filt0 = (v16i8) FUNC11(filt_const0);
    filt1 = (v16i8) FUNC11(filt_const1);
    filt2 = (v16i8) FUNC11(filt_const2);

    FUNC3(&luma_mask_arr[48], 16, mask0, mask1, mask2);

    FUNC5(src_y, stride, src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);
    src_y += (5 * stride);

    src_vt0 = (v16i8) FUNC12((v4i32) src_vt0, 1, (v4i32) src_vt1);
    src_vt1 = (v16i8) FUNC12((v4i32) src_vt1, 1, (v4i32) src_vt2);
    src_vt2 = (v16i8) FUNC12((v4i32) src_vt2, 1, (v4i32) src_vt3);
    src_vt3 = (v16i8) FUNC12((v4i32) src_vt3, 1, (v4i32) src_vt4);

    FUNC10(src_vt0, src_vt1, src_vt2, src_vt3);

    FUNC4(src_x, stride, src_hz0, src_hz1, src_hz2, src_hz3);
    FUNC10(src_hz0, src_hz1, src_hz2, src_hz3);
    hz_out0 = FUNC1(src_hz0, src_hz1, mask0, mask1, mask2);
    hz_out1 = FUNC1(src_hz2, src_hz3, mask0, mask1, mask2);

    FUNC8(hz_out0, hz_out1, 5);
    FUNC7(hz_out0, hz_out1, 7);

    FUNC4(src_y, stride, src_vt5, src_vt6, src_vt7, src_vt8);

    src_vt4 = (v16i8) FUNC12((v4i32) src_vt4, 1, (v4i32) src_vt5);
    src_vt5 = (v16i8) FUNC12((v4i32) src_vt5, 1, (v4i32) src_vt6);
    src_vt6 = (v16i8) FUNC12((v4i32) src_vt6, 1, (v4i32) src_vt7);
    src_vt7 = (v16i8) FUNC12((v4i32) src_vt7, 1, (v4i32) src_vt8);

    FUNC10(src_vt4, src_vt5, src_vt6, src_vt7);
    FUNC2(src_vt1, src_vt0, src_vt3, src_vt2, src_vt10_r, src_vt32_r);
    FUNC2(src_vt5, src_vt4, src_vt7, src_vt6, src_vt54_r, src_vt76_r);
    vt_out0 = FUNC0(src_vt10_r, src_vt32_r, src_vt54_r, filt0, filt1,
                             filt2);
    vt_out1 = FUNC0(src_vt32_r, src_vt54_r, src_vt76_r, filt0, filt1,
                             filt2);
    FUNC8(vt_out0, vt_out1, 5);
    FUNC7(vt_out0, vt_out1, 7);

    out0 = FUNC13((hz_out0 + vt_out0), 1);
    out1 = FUNC13((hz_out1 + vt_out1), 1);

    FUNC7(out0, out1, 7);
    out = FUNC6(out0, out1);
    FUNC9(out, 0, 1, 2, 3, dst, stride);
}