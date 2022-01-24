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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC13(const uint8_t *src, int32_t src_stride,
                               uint8_t *dst, int32_t dst_stride,
                               const int8_t *filter_horiz, const int8_t *filter_vert)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, mask;
    v16i8 res0, res1, res2, res3;
    v16u8 filt_hz, filt_vt, vec0, vec1, vec2, vec3;
    v8u16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8u16 hz_out7, hz_out8, vec4, vec5, vec6, vec7, filt;

    mask = FUNC3(&mc_filt_mask_arr[16]);

    /* rearranging filter */
    filt = FUNC5(filter_horiz);
    filt_hz = (v16u8) FUNC12((v8i16) filt, 0);

    filt = FUNC5(filter_vert);
    filt_vt = (v16u8) FUNC12((v8i16) filt, 0);

    FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    src8 = FUNC3(src);

    hz_out0 = FUNC1(src0, src1, mask, filt_hz, 7);
    hz_out2 = FUNC1(src2, src3, mask, filt_hz, 7);
    hz_out4 = FUNC1(src4, src5, mask, filt_hz, 7);
    hz_out6 = FUNC1(src6, src7, mask, filt_hz, 7);
    hz_out8 = FUNC1(src8, src8, mask, filt_hz, 7);
    FUNC8(hz_out2, hz_out0, hz_out4, hz_out2, hz_out6, hz_out4, 8, hz_out1,
               hz_out3, hz_out5);
    hz_out7 = (v8u16) FUNC11((v2i64) hz_out8, (v2i64) hz_out6);

    FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
    FUNC2(hz_out4, hz_out5, hz_out6, hz_out7, vec2, vec3);
    FUNC0(vec0, vec1, vec2, vec3, filt_vt, filt_vt, filt_vt, filt_vt,
                vec4, vec5, vec6, vec7);
    FUNC9(vec4, vec5, vec6, vec7, 7);
    FUNC7(vec4, vec5, vec6, vec7, 7);
    FUNC6(vec4, vec4, vec5, vec5, vec6, vec6, vec7, vec7,
                res0, res1, res2, res3);
    FUNC10(res0, 0, 1, dst, dst_stride);
    FUNC10(res1, 0, 1, dst + 2 * dst_stride, dst_stride);
    FUNC10(res2, 0, 1, dst + 4 * dst_stride, dst_stride);
    FUNC10(res3, 0, 1, dst + 6 * dst_stride, dst_stride);
}