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
typedef  int v8i16 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, vec0, vec1, vec2, vec3;
    v8i16 in0, in1, in2, in3, dst0, dst1, dst2, dst3;
    v8i16 filt0, filt1;
    v16i8 mask0 = FUNC2(&ff_hevc_mask_arr[0]);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= 1;

    const_vec = FUNC11(128);
    const_vec <<= 6;

    filter_vec = FUNC4(filter);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        FUNC3(src0_ptr, src_stride, src0, src2);
        FUNC3(src0_ptr + 8, src_stride, src1, src3);
        src0_ptr += (2 * src_stride);
        FUNC5(src1_ptr, src2_stride, in0, in2);
        FUNC5(src1_ptr + 8, src2_stride, in1, in3);
        src1_ptr += (2 * src2_stride);

        FUNC10(src0, src1, src2, src3);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        dst3 = const_vec;

        FUNC9(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
        FUNC9(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, dst0,
                     dst1, dst2, dst3);
        FUNC9(src0, src0, src1, src1, mask1, mask1, vec0, vec1);
        FUNC9(src2, src2, src3, src3, mask1, mask1, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt1, filt1, filt1, filt1, dst0,
                     dst1, dst2, dst3);

        FUNC1(in0, in1, in2, in3,
                          dst0, dst1, dst2, dst3, 7, dst0, dst1, dst2, dst3);

        FUNC6(dst1, dst0, dst3, dst2, dst0, dst1);
        FUNC8(dst0, dst1, dst, dst_stride);
        dst += (2 * dst_stride);
    }
}