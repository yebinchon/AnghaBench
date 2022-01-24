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
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC13(uint8_t *src0_ptr,
                                          int32_t src_stride,
                                          int16_t *src1_ptr,
                                          int32_t src2_stride,
                                          uint8_t *dst,
                                          int32_t dst_stride,
                                          const int8_t *filter,
                                          int32_t height)
{
    uint32_t loop_cnt;
    v8i16 filt0, filt1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 dst0, dst1;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 mask0 = FUNC3(&ff_hevc_mask_arr[16]);
    v16i8 mask1, vec0, vec1, vec2, vec3;
    v8i16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filter_vec, const_vec;

    src0_ptr -= 1;

    const_vec = FUNC12(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC4(src0_ptr, src_stride,
               src0, src1, src2, src3, src4, src5, src6, src7);
        src0_ptr += (8 * src_stride);
        FUNC6(src1_ptr, src2_stride, in0, in1, in2, in3);
        src1_ptr += (4 * src2_stride);
        FUNC6(src1_ptr, src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);
        FUNC2(in1, in0, in3, in2, in0, in1);
        FUNC2(in5, in4, in7, in6, in2, in3);
        FUNC11(src0, src1, src2, src3, src4, src5, src6, src7);

        tmp0 = const_vec;
        tmp1 = const_vec;
        tmp2 = const_vec;
        tmp3 = const_vec;
        FUNC10(src0, src1, src2, src3, mask0, mask0, vec0, vec1);
        FUNC10(src4, src5, src6, src7, mask0, mask0, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, tmp0,
                     tmp1, tmp2, tmp3);
        FUNC10(src0, src1, src2, src3, mask1, mask1, vec0, vec1);
        FUNC10(src4, src5, src6, src7, mask1, mask1, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt1, filt1, filt1, filt1, tmp0,
                     tmp1, tmp2, tmp3);

        FUNC1(in0, in1, in2, in3,
                          tmp0, tmp1, tmp2, tmp3, 7, tmp0, tmp1, tmp2, tmp3);

        FUNC7(tmp1, tmp0, tmp3, tmp2, dst0, dst1);
        FUNC9(dst0, dst1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);
    }
}