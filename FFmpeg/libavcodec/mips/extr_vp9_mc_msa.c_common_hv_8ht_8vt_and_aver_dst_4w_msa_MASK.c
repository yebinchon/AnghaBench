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
 int /*<<< orphan*/  FUNC3 (int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC21(const uint8_t *src,
                                                  int32_t src_stride,
                                                  uint8_t *dst,
                                                  int32_t dst_stride,
                                                  const int8_t *filter_horiz,
                                                  const int8_t *filter_vert,
                                                  int32_t height)
{
    uint32_t loop_cnt;
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16u8 dst0, res, mask0, mask1, mask2, mask3;
    v16i8 filt_hz0, filt_hz1, filt_hz2, filt_hz3;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, hz_out9, res0, res1, vec0, vec1, vec2, vec3, vec4;
    v8i16 filt, filt_vt0, filt_vt1, filt_vt2, filt_vt3;

    mask0 = FUNC7(&mc_filt_mask_arr[16]);
    src -= (3 + 3 * src_stride);

    /* rearranging filter */
    filt = FUNC6(filter_horiz);
    FUNC12(filt, 0, 1, 2, 3, filt_hz0, filt_hz1, filt_hz2, filt_hz3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    FUNC5(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    FUNC17(src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);

    hz_out0 = FUNC1(src0, src1, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out2 = FUNC1(src2, src3, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out4 = FUNC1(src4, src5, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    hz_out5 = FUNC1(src5, src6, mask0, mask1, mask2, mask3, filt_hz0,
                              filt_hz1, filt_hz2, filt_hz3);
    FUNC11(hz_out2, hz_out0, hz_out4, hz_out2, 8, hz_out1, hz_out3);

    filt = FUNC6(filter_vert);
    FUNC13(filt, 0, 1, 2, 3, filt_vt0, filt_vt1, filt_vt2, filt_vt3);

    FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
    vec2 = (v8i16) FUNC19((v16i8) hz_out5, (v16i8) hz_out4);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC4(src, src_stride, src7, src8, src9, src10);
        FUNC16(src7, src8, src9, src10);
        src += (4 * src_stride);

        FUNC8(dst, dst_stride, tp0, tp1, tp2, tp3);
        FUNC3(tp0, tp1, tp2, tp3, dst0);
        hz_out7 = FUNC1(src7, src8, mask0, mask1, mask2, mask3,
                                  filt_hz0, filt_hz1, filt_hz2, filt_hz3);
        hz_out6 = (v8i16) FUNC20((v16i8) hz_out7, (v16i8) hz_out5, 8);
        vec3 = (v8i16) FUNC19((v16i8) hz_out7, (v16i8) hz_out6);
        res0 = FUNC0(vec0, vec1, vec2, vec3, filt_vt0, filt_vt1,
                                   filt_vt2, filt_vt3);

        hz_out9 = FUNC1(src9, src10, mask0, mask1, mask2, mask3,
                                  filt_hz0, filt_hz1, filt_hz2, filt_hz3);
        hz_out8 = (v8i16) FUNC20((v16i8) hz_out9, (v16i8) hz_out7, 8);
        vec4 = (v8i16) FUNC19((v16i8) hz_out9, (v16i8) hz_out8);
        res1 = FUNC0(vec1, vec2, vec3, vec4, filt_vt0, filt_vt1,
                                   filt_vt2, filt_vt3);

        FUNC14(res0, res1, 7);
        FUNC10(res0, res1, 7);
        res = FUNC9(res0, res1);
        res = (v16u8) FUNC18(res, dst0);
        FUNC15(res, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);

        hz_out5 = hz_out9;
        vec0 = vec2;
        vec1 = vec3;
        vec2 = vec4;
    }
}