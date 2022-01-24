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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
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
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    int32_t weight, offset, constant;
    v8i16 filt0, filt1;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 in0, in1, in2, in3, in4, in5;
    v16i8 mask0 = FUNC3(&ff_hevc_mask_arr[0]);
    v16i8 mask1;
    v16i8 vec0, vec1;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= 1;

    filter_vec = FUNC5(filter);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = FUNC14(offset);
    weight_vec = FUNC14(weight);
    rnd_vec = FUNC14(rnd_val + 1);

    mask1 = mask0 + 2;

    FUNC4(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5);

    FUNC7(src1_ptr, src2_stride, in0, in1, in2, in3);
    src1_ptr += (4 * src2_stride);
    FUNC6(src1_ptr, src2_stride, in4, in5);
    FUNC13(src0, src1, src2, src3, src4, src5);
    FUNC12(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    dst0 = FUNC2(vec0, vec1, filt0, filt1);
    FUNC12(src1, src1, src1, src1, mask0, mask1, vec0, vec1);
    dst1 = FUNC2(vec0, vec1, filt0, filt1);
    FUNC12(src2, src2, src2, src2, mask0, mask1, vec0, vec1);
    dst2 = FUNC2(vec0, vec1, filt0, filt1);
    FUNC12(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
    dst3 = FUNC2(vec0, vec1, filt0, filt1);
    FUNC12(src4, src4, src4, src4, mask0, mask1, vec0, vec1);
    dst4 = FUNC2(vec0, vec1, filt0, filt1);
    FUNC12(src5, src5, src5, src5, mask0, mask1, vec0, vec1);
    dst5 = FUNC2(vec0, vec1, filt0, filt1);
    FUNC1(dst0, dst1, dst2, dst3,
                       in0, in1, in2, in3,
                       weight_vec, rnd_vec, offset_vec,
                       dst0, dst1, dst2, dst3);
    FUNC0(dst4, dst5, in4, in5,
                       weight_vec, rnd_vec, offset_vec,
                       dst4, dst5);

    FUNC8(dst1, dst0, dst3, dst2, dst0, dst1);
    dst3 = (v8i16) FUNC15((v16i8) dst5, (v16i8) dst4);
    FUNC11(dst0, dst1, 0, 1, 0, 1, dst, dst_stride);
    FUNC10(dst3, 0, 1, dst + 4 * dst_stride, dst_stride);
}