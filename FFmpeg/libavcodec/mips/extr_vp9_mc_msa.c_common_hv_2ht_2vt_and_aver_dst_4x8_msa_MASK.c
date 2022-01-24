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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC16(const uint8_t *src,
                                                   int32_t src_stride,
                                                   uint8_t *dst,
                                                   int32_t dst_stride,
                                                   const int8_t *filter_horiz,
                                                   const int8_t *filter_vert)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, mask;
    v16u8 filt_hz, filt_vt, vec0, vec1, vec2, vec3, res0, res1;
    v16u8 dst0, dst1;
    v8u16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8u16 hz_out7, hz_out8, tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    mask = FUNC5(&mc_filt_mask_arr[16]);

    /* rearranging filter */
    filt = FUNC7(filter_horiz);
    filt_hz = (v16u8) FUNC15(filt, 0);

    filt = FUNC7(filter_vert);
    filt_vt = (v16u8) FUNC15(filt, 0);

    FUNC6(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    src8 = FUNC5(src);

    hz_out0 = FUNC2(src0, src1, mask, filt_hz, 7);
    hz_out2 = FUNC2(src2, src3, mask, filt_hz, 7);
    hz_out4 = FUNC2(src4, src5, mask, filt_hz, 7);
    hz_out6 = FUNC2(src6, src7, mask, filt_hz, 7);
    hz_out8 = FUNC2(src8, src8, mask, filt_hz, 7);
    FUNC11(hz_out2, hz_out0, hz_out4, hz_out2, hz_out6, hz_out4, 8, hz_out1,
               hz_out3, hz_out5);
    hz_out7 = (v8u16) FUNC14((v2i64) hz_out8, (v2i64) hz_out6);

    FUNC8(dst, dst_stride, tp0, tp1, tp2, tp3);
    FUNC4(tp0, tp1, tp2, tp3, dst0);
    FUNC8(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
    FUNC4(tp0, tp1, tp2, tp3, dst1);
    FUNC3(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
    FUNC3(hz_out4, hz_out5, hz_out6, hz_out7, vec2, vec3);
    FUNC1(vec0, vec1, vec2, vec3, filt_vt, filt_vt, filt_vt, filt_vt,
                tmp0, tmp1, tmp2, tmp3);
    FUNC12(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC10(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC9(tmp1, tmp0, tmp3, tmp2, res0, res1);
    FUNC0(res0, dst0, res1, dst1, res0, res1);
    FUNC13(res0, res1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
}