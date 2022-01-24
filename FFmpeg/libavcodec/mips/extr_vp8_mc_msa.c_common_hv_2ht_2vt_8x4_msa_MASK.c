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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC11(uint8_t *src, int32_t src_stride,
                                      uint8_t *dst, int32_t dst_stride,
                                      const int8_t *filter_horiz,
                                      const int8_t *filter_vert)
{
    v16i8 src0, src1, src2, src3, src4, mask, out0, out1;
    v16u8 filt_hz, filt_vt, vec0, vec1, vec2, vec3;
    v8u16 hz_out0, hz_out1, tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    mask = FUNC1(&mc_filt_mask_arr[0]);

    /* rearranging filter */
    filt = FUNC3(filter_horiz);
    filt_hz = (v16u8) FUNC10(filt, 0);

    filt = FUNC3(filter_vert);
    filt_vt = (v16u8) FUNC10(filt, 0);

    FUNC2(src, src_stride, src0, src1, src2, src3, src4);

    hz_out0 = FUNC0(src0, src0, mask, filt_hz, 7);
    hz_out1 = FUNC0(src1, src1, mask, filt_hz, 7);
    vec0 = (v16u8) FUNC9((v16i8) hz_out1, (v16i8) hz_out0);
    tmp0 = FUNC8(vec0, filt_vt);

    hz_out0 = FUNC0(src2, src2, mask, filt_hz, 7);
    vec1 = (v16u8) FUNC9((v16i8) hz_out0, (v16i8) hz_out1);
    tmp1 = FUNC8(vec1, filt_vt);

    hz_out1 = FUNC0(src3, src3, mask, filt_hz, 7);
    vec2 = (v16u8) FUNC9((v16i8) hz_out1, (v16i8) hz_out0);
    tmp2 = FUNC8(vec2, filt_vt);

    hz_out0 = FUNC0(src4, src4, mask, filt_hz, 7);
    vec3 = (v16u8) FUNC9((v16i8) hz_out0, (v16i8) hz_out1);
    tmp3 = FUNC8(vec3, filt_vt);

    FUNC6(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC5(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC4(tmp1, tmp0, tmp3, tmp2, out0, out1);
    FUNC7(out0, out1, 0, 1, 0, 1, dst, dst_stride);
}