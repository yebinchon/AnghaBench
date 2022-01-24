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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 
 int /*<<< orphan*/ ** subpel_filters_msa ; 

void FUNC16(uint8_t *dst, ptrdiff_t dst_stride,
                               uint8_t *src, ptrdiff_t src_stride,
                               int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter_horiz = subpel_filters_msa[mx - 1];
    const int8_t *filter_vert = subpel_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, filt_hz0, filt_hz1;
    v16u8 mask0, mask1, out;
    v8i16 filt, filt_vt0, filt_vt1, tmp0, tmp1, vec0, vec1, vec2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5;

    mask0 = FUNC5(&mc_filt_mask_arr[16]);
    src -= (1 + 1 * src_stride);

    /* rearranging filter */
    filt = FUNC4(filter_horiz);
    FUNC8(filt, 0, 1, filt_hz0, filt_hz1);

    mask1 = mask0 + 2;

    FUNC2(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC13(src0, src1, src2);
    hz_out0 = FUNC1(src0, src1, mask0, mask1, filt_hz0, filt_hz1);
    hz_out1 = FUNC1(src1, src2, mask0, mask1, filt_hz0, filt_hz1);
    vec0 = (v8i16) FUNC14((v16i8) hz_out1, (v16i8) hz_out0);

    filt = FUNC4(filter_vert);
    FUNC9(filt, 0, 1, filt_vt0, filt_vt1);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src3, src4, src5, src6);
        src += (4 * src_stride);

        FUNC12(src3, src4);
        hz_out3 = FUNC1(src3, src4, mask0, mask1, filt_hz0, filt_hz1);
        hz_out2 = (v8i16) FUNC15((v16i8) hz_out3, (v16i8) hz_out1, 8);
        vec1 = (v8i16) FUNC14((v16i8) hz_out3, (v16i8) hz_out2);
        tmp0 = FUNC0(vec0, vec1, filt_vt0, filt_vt1);

        FUNC12(src5, src6);
        hz_out5 = FUNC1(src5, src6, mask0, mask1, filt_hz0, filt_hz1);
        hz_out4 = (v8i16) FUNC15((v16i8) hz_out5, (v16i8) hz_out3, 8);
        vec2 = (v8i16) FUNC14((v16i8) hz_out5, (v16i8) hz_out4);
        tmp1 = FUNC0(vec1, vec2, filt_vt0, filt_vt1);

        FUNC10(tmp0, tmp1, 7);
        FUNC7(tmp0, tmp1, 7);
        out = FUNC6(tmp0, tmp1);
        FUNC11(out, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);

        hz_out1 = hz_out5;
        vec0 = vec2;
    }
}