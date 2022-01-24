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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC16(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out0, out1, out2;
    v8i16 filt0, filt1;
    v16i8 src0, src1, src2, src3, src4, src5;
    v16i8 mask0 = FUNC3(&ff_hevc_mask_arr[0]);
    v16i8 mask1;
    v16i8 vec11;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= 1;

    filter_vec = FUNC5(filter);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC14(weight);
    rnd_vec = FUNC14(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC13(weight);
    offset_vec = FUNC13(offset);
    denom_vec = FUNC13(rnd_val);

    weight_vec_h = FUNC15(weight_vec_h, denom_vec);
    offset_vec = FUNC12(offset_vec, weight_vec_h);

    mask1 = mask0 + 2;

    FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5);
    FUNC11(src0, src1, src2, src3, src4, src5);

    FUNC10(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC10(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC10(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC10(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC10(src4, src4, src4, src4, mask0, mask1, vec8, vec9);
    FUNC10(src5, src5, src5, src5, mask0, mask1, vec10, vec11);
    dst0 = FUNC0(vec0, vec1, filt0, filt1);
    dst1 = FUNC0(vec2, vec3, filt0, filt1);
    dst2 = FUNC0(vec4, vec5, filt0, filt1);
    dst3 = FUNC0(vec6, vec7, filt0, filt1);
    dst4 = FUNC0(vec8, vec9, filt0, filt1);
    dst5 = FUNC0(vec10, vec11, filt0, filt1);

    FUNC2(dst0, dst1, dst2, dst3,
                                   weight_vec, offset_vec, rnd_vec,
                                   dst0, dst1, dst2, dst3);

    FUNC1(dst4, dst5, weight_vec, offset_vec, rnd_vec,
                                   dst4, dst5);

    FUNC6(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
    FUNC9(out0, out1, 0, 1, 0, 1, dst, dst_stride);
    FUNC8(out2, 0, 1, dst + 4 * dst_stride, dst_stride);
}