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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC16(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t height,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    uint32_t loop_cnt;
    int32_t offset, weight, constant;
    v16i8 src0, src1, src2, src3, vec0, vec1, vec2, vec3;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v8i16 filt0, filt1, filt2, filt3, out0, out1, out2, out3;
    v8i16 dst0, dst1, dst2, dst3, in0, in1, in2, in3, filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= 3;

    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset = (offset0 + offset1) << rnd_val;
    offset += constant;

    offset_vec = FUNC14(offset);
    weight_vec = FUNC14(weight);
    rnd_vec = FUNC14(rnd_val + 1);

    filter_vec = FUNC6(filter);
    FUNC9(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask0 = FUNC4(&ff_hevc_mask_arr[0]);
    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = FUNC4(&ff_hevc_mask_arr[16]);
    mask5 = mask4 + 2;
    mask6 = mask4 + 4;
    mask7 = mask4 + 6;

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC5(src0_ptr, src_stride, src0, src1, src2, src3);
        FUNC7(src1_ptr, src2_stride, in0, in1, in2, in3);
        FUNC13(src0, src1, src2, src3);
        FUNC12(src0, src0, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst0 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC12(src1, src1, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst1 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC12(src2, src2, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst2 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC12(src3, src3, mask0, mask1, mask2, mask3, vec0, vec1, vec2,
                   vec3);
        dst3 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC1(dst0, dst1, dst2, dst3, in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec, out0, out1, out2,
                           out3);
        FUNC8(out1, out0, out3, out2, out0, out1);
        FUNC10(out0, out1, 0, 1, 0, 1, dst, dst_stride);

        FUNC5(src0_ptr + 8, src_stride, src0, src1, src2, src3);
        src0_ptr += (4 * src_stride);
        FUNC7(src1_ptr + 8, src2_stride, in0, in1, in2, in3);
        src1_ptr += (4 * src2_stride);
        FUNC3(in1, in0, in3, in2, in0, in1);
        FUNC13(src0, src1, src2, src3);
        FUNC12(src0, src1, mask4, mask5, mask6, mask7, vec0, vec1, vec2,
                   vec3);
        dst0 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC12(src2, src3, mask4, mask5, mask6, mask7, vec0, vec1, vec2,
                   vec3);
        dst1 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC0(dst0, dst1, in0, in1, weight_vec, rnd_vec,
                           offset_vec, out0, out1);
        out0 = (v8i16) FUNC15((v16i8) out1, (v16i8) out0);
        FUNC11(out0, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);
    }
}