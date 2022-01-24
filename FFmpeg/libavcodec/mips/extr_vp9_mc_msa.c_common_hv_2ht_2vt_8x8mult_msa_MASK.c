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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC13(const uint8_t *src, int32_t src_stride,
                                   uint8_t *dst, int32_t dst_stride,
                                   const int8_t *filter_horiz, const int8_t *filter_vert,
                                   int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, mask, out0, out1;
    v16u8 filt_hz, filt_vt, vec0;
    v8u16 hz_out0, hz_out1, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;
    v8i16 filt;

    mask = FUNC1(&mc_filt_mask_arr[0]);

    /* rearranging filter */
    filt = FUNC3(filter_horiz);
    filt_hz = (v16u8) FUNC12(filt, 0);

    filt = FUNC3(filter_vert);
    filt_vt = (v16u8) FUNC12(filt, 0);

    src0 = FUNC1(src);
    src += src_stride;

    hz_out0 = FUNC0(src0, src0, mask, filt_hz, 7);

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC2(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);

        hz_out1 = FUNC0(src1, src1, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out1, (v16i8) hz_out0);
        tmp1 = FUNC10(vec0, filt_vt);

        hz_out0 = FUNC0(src2, src2, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out0, (v16i8) hz_out1);
        tmp2 = FUNC10(vec0, filt_vt);

        FUNC7(tmp1, tmp2, 7);
        FUNC5(tmp1, tmp2, 7);

        hz_out1 = FUNC0(src3, src3, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out1, (v16i8) hz_out0);
        tmp3 = FUNC10(vec0, filt_vt);

        hz_out0 = FUNC0(src4, src4, mask, filt_hz, 7);
        FUNC2(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);
        vec0 = (v16u8) FUNC11((v16i8) hz_out0, (v16i8) hz_out1);
        tmp4 = FUNC10(vec0, filt_vt);

        FUNC7(tmp3, tmp4, 7);
        FUNC5(tmp3, tmp4, 7);
        FUNC4(tmp2, tmp1, tmp4, tmp3, out0, out1);
        FUNC9(out0, out1, 0, 1, 0, 1, dst, dst_stride);

        hz_out1 = FUNC0(src1, src1, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out1, (v16i8) hz_out0);
        tmp5 = FUNC10(vec0, filt_vt);

        hz_out0 = FUNC0(src2, src2, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out0, (v16i8) hz_out1);
        tmp6 = FUNC10(vec0, filt_vt);

        hz_out1 = FUNC0(src3, src3, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out1, (v16i8) hz_out0);
        tmp7 = FUNC10(vec0, filt_vt);

        hz_out0 = FUNC0(src4, src4, mask, filt_hz, 7);
        vec0 = (v16u8) FUNC11((v16i8) hz_out0, (v16i8) hz_out1);
        tmp8 = FUNC10(vec0, filt_vt);

        FUNC8(tmp5, tmp6, tmp7, tmp8, 7);
        FUNC6(tmp5, tmp6, tmp7, tmp8, 7);
        FUNC4(tmp6, tmp5, tmp8, tmp7, out0, out1);
        FUNC9(out0, out1, 0, 1, 0, 1, dst + 4 * dst_stride, dst_stride);
        dst += (8 * dst_stride);
    }
}