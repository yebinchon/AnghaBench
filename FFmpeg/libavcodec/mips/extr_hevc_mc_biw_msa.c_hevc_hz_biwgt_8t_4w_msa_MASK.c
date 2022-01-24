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
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC13(uint8_t *src0_ptr,
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
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 src0, src1, src2, src3;
    v16i8 mask1, mask2, mask3;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 dst0, dst1;
    v8i16 in0, in1, in2, in3;
    v8i16 filter_vec, out0, out1;
    v4i32 weight_vec, offset_vec, rnd_vec;
    v16i8 mask0 = FUNC3(&ff_hevc_mask_arr[16]);

    src0_ptr -= 3;
    filter_vec = FUNC5(filter);
    FUNC7(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = FUNC11(offset);
    weight_vec = FUNC11(weight);
    rnd_vec = FUNC11(rnd_val + 1);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC4(src0_ptr, src_stride, src0, src1, src2, src3);
        src0_ptr += (4 * src_stride);
        FUNC6(src1_ptr, src2_stride, in0, in1, in2, in3);
        src1_ptr += (4 * src2_stride);
        FUNC2(in1, in0, in3, in2, in0, in1);
        FUNC10(src0, src1, src2, src3);

        FUNC9(src0, src1, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        dst0 = FUNC1(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        FUNC9(src2, src3, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        dst1 = FUNC1(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);

        FUNC0(dst0, dst1, in0, in1,
                           weight_vec, rnd_vec, offset_vec,
                           out0, out1);

        out0 = (v8i16) FUNC12((v16i8) out1, (v16i8) out0);
        FUNC8(out0, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}