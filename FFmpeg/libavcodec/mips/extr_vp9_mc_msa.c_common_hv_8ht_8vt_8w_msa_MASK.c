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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC16(const uint8_t *src, int32_t src_stride,
                                     uint8_t *dst, int32_t dst_stride,
                                     const int8_t *filter_horiz,
                                     const int8_t *filter_vert,
                                     int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 filt_hz0, filt_hz1, filt_hz2, filt_hz3;
    v16u8 mask0, mask1, mask2, mask3, vec0, vec1;
    v8i16 filt, filt_vt0, filt_vt1, filt_vt2, filt_vt3;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, hz_out9, hz_out10, tmp0, tmp1, tmp2, tmp3;
    v8i16 out0, out1, out2, out3, out4, out5, out6, out7, out8, out9;

    mask0 = FUNC6(&mc_filt_mask_arr[0]);
    src -= (3 + 3 * src_stride);

    /* rearranging filter */
    filt = FUNC5(filter_horiz);
    FUNC9(filt, 0, 1, 2, 3, filt_hz0, filt_hz1, filt_hz2, filt_hz3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);

    FUNC14(src0, src1, src2, src3, src4, src5, src6);
    hz_out0 = FUNC1(src0, src0, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out1 = FUNC1(src1, src1, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out2 = FUNC1(src2, src2, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out3 = FUNC1(src3, src3, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out4 = FUNC1(src4, src4, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out5 = FUNC1(src5, src5, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out6 = FUNC1(src6, src6, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);

    filt = FUNC5(filter_vert);
    FUNC10(filt, 0, 1, 2, 3, filt_vt0, filt_vt1, filt_vt2, filt_vt3);

    FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, out0, out1);
    FUNC2(hz_out4, hz_out5, hz_out1, hz_out2, out2, out4);
    FUNC2(hz_out3, hz_out4, hz_out5, hz_out6, out5, out6);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src7, src8, src9, src10);
        src += (4 * src_stride);

        FUNC13(src7, src8, src9, src10);

        hz_out7 = FUNC1(src7, src7, mask0, mask1, mask2, mask3,
                                  filt_hz0, filt_hz1, filt_hz2, filt_hz3);
        out3 = (v8i16) FUNC15((v16i8) hz_out7, (v16i8) hz_out6);
        tmp0 = FUNC0(out0, out1, out2, out3, filt_vt0, filt_vt1,
                                   filt_vt2, filt_vt3);

        hz_out8 = FUNC1(src8, src8, mask0, mask1, mask2, mask3,
                                  filt_hz0, filt_hz1, filt_hz2, filt_hz3);
        out7 = (v8i16) FUNC15((v16i8) hz_out8, (v16i8) hz_out7);
        tmp1 = FUNC0(out4, out5, out6, out7, filt_vt0, filt_vt1,
                                   filt_vt2, filt_vt3);

        hz_out9 = FUNC1(src9, src9, mask0, mask1, mask2, mask3,
                                  filt_hz0, filt_hz1, filt_hz2, filt_hz3);
        out8 = (v8i16) FUNC15((v16i8) hz_out9, (v16i8) hz_out8);
        tmp2 = FUNC0(out1, out2, out3, out8, filt_vt0,
                                   filt_vt1, filt_vt2, filt_vt3);

        hz_out10 = FUNC1(src10, src10, mask0, mask1, mask2, mask3,
                                   filt_hz0, filt_hz1, filt_hz2, filt_hz3);
        out9 = (v8i16) FUNC15((v16i8) hz_out10, (v16i8) hz_out9);
        tmp3 = FUNC0(out5, out6, out7, out9, filt_vt0, filt_vt1,
                                   filt_vt2, filt_vt3);
        FUNC11(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC8(tmp0, tmp1, tmp2, tmp3, 7);
        vec0 = FUNC7(tmp0, tmp1);
        vec1 = FUNC7(tmp2, tmp3);
        FUNC12(vec0, vec1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);

        hz_out6 = hz_out10;
        out0 = out2;
        out1 = out3;
        out2 = out8;
        out4 = out6;
        out5 = out7;
        out6 = out9;
    }
}