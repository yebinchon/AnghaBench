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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 
 int /*<<< orphan*/ ** subpel_filters_msa ; 

void FUNC16(uint8_t *dst, ptrdiff_t dst_stride,
                               uint8_t *src, ptrdiff_t src_stride,
                               int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter_horiz = subpel_filters_msa[mx - 1];
    const int8_t *filter_vert = subpel_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 filt_hz0, filt_hz1, mask0, mask1;
    v8i16 filt, filt_vt0, filt_vt1, filt_vt2, tmp0, tmp1, tmp2, tmp3;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, out0, out1, out2, out3, out4, out5, out6, out7;
    v16u8 vec0, vec1;

    mask0 = FUNC3(&mc_filt_mask_arr[0]);
    src -= (1 + 2 * src_stride);

    /* rearranging filter */
    filt = FUNC6(filter_horiz);
    FUNC9(filt, 0, 1, filt_hz0, filt_hz1);

    mask1 = mask0 + 2;

    FUNC5(src, src_stride, src0, src1, src2, src3, src4);
    src += (5 * src_stride);

    FUNC14(src0, src1, src2, src3, src4);
    hz_out0 = FUNC1(src0, src0, mask0, mask1, filt_hz0, filt_hz1);
    hz_out1 = FUNC1(src1, src1, mask0, mask1, filt_hz0, filt_hz1);
    hz_out2 = FUNC1(src2, src2, mask0, mask1, filt_hz0, filt_hz1);
    hz_out3 = FUNC1(src3, src3, mask0, mask1, filt_hz0, filt_hz1);
    hz_out4 = FUNC1(src4, src4, mask0, mask1, filt_hz0, filt_hz1);
    FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, out0, out1);
    FUNC2(hz_out1, hz_out2, hz_out3, hz_out4, out3, out4);

    filt = FUNC6(filter_vert);
    FUNC10(filt, 0, 1, 2, filt_vt0, filt_vt1, filt_vt2);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC4(src, src_stride, src5, src6, src7, src8);
        src += (4 * src_stride);

        FUNC13(src5, src6, src7, src8);

        hz_out5 = FUNC1(src5, src5, mask0, mask1, filt_hz0, filt_hz1);
        out2 = (v8i16) FUNC15((v16i8) hz_out5, (v16i8) hz_out4);
        tmp0 = FUNC0(out0, out1, out2, filt_vt0, filt_vt1, filt_vt2);

        hz_out6 = FUNC1(src6, src6, mask0, mask1, filt_hz0, filt_hz1);
        out5 = (v8i16) FUNC15((v16i8) hz_out6, (v16i8) hz_out5);
        tmp1 = FUNC0(out3, out4, out5, filt_vt0, filt_vt1, filt_vt2);

        hz_out7 = FUNC1(src7, src7, mask0, mask1, filt_hz0, filt_hz1);
        out6 = (v8i16) FUNC15((v16i8) hz_out7, (v16i8) hz_out6);
        tmp2 = FUNC0(out1, out2, out6, filt_vt0, filt_vt1, filt_vt2);

        hz_out8 = FUNC1(src8, src8, mask0, mask1, filt_hz0, filt_hz1);
        out7 = (v8i16) FUNC15((v16i8) hz_out8, (v16i8) hz_out7);
        tmp3 = FUNC0(out4, out5, out7, filt_vt0, filt_vt1, filt_vt2);

        FUNC11(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC8(tmp0, tmp1, tmp2, tmp3, 7);
        vec0 = FUNC7(tmp0, tmp1);
        vec1 = FUNC7(tmp2, tmp3);
        FUNC12(vec0, vec1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);

        hz_out4 = hz_out8;
        out0 = out2;
        out1 = out6;
        out3 = out5;
        out4 = out7;
    }
}