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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC15(uint8_t *src,
                                     int32_t src_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t height,
                                     int32_t weight,
                                     int32_t offset,
                                     int32_t rnd_val)
{
    v16u8 out0, out1, out2, out3;
    v8i16 filt0, filt1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 mask0 = FUNC2(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= 1;

    filter_vec = FUNC4(filter);
    FUNC6(filter_vec, 0, 1, filt0, filt1);

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC13(weight);
    rnd_vec = FUNC13(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC12(weight);
    offset_vec = FUNC12(offset);
    denom_vec = FUNC12(rnd_val);

    weight_vec_h = FUNC14(weight_vec_h, denom_vec);
    offset_vec = FUNC11(offset_vec, weight_vec_h);

    mask1 = mask0 + 2;

    FUNC3(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC10(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC9(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC9(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC9(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC9(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    dst0 = FUNC0(vec0, vec1, filt0, filt1);
    dst1 = FUNC0(vec2, vec3, filt0, filt1);
    dst2 = FUNC0(vec4, vec5, filt0, filt1);
    dst3 = FUNC0(vec6, vec7, filt0, filt1);
    FUNC9(src4, src4, src4, src4, mask0, mask1, vec0, vec1);
    FUNC9(src5, src5, src5, src5, mask0, mask1, vec2, vec3);
    FUNC9(src6, src6, src6, src6, mask0, mask1, vec4, vec5);
    FUNC9(src7, src7, src7, src7, mask0, mask1, vec6, vec7);
    dst4 = FUNC0(vec0, vec1, filt0, filt1);
    dst5 = FUNC0(vec2, vec3, filt0, filt1);
    dst6 = FUNC0(vec4, vec5, filt0, filt1);
    dst7 = FUNC0(vec6, vec7, filt0, filt1);

    FUNC1(dst0, dst1, dst2, dst3,
                                   weight_vec, offset_vec, rnd_vec,
                                   dst0, dst1, dst2, dst3);
    FUNC1(dst4, dst5, dst6, dst7,
                                   weight_vec, offset_vec, rnd_vec,
                                   dst4, dst5, dst6, dst7);

    FUNC5(dst1, dst0, dst3, dst2, out0, out1);
    FUNC5(dst5, dst4, dst7, dst6, out2, out3);
    FUNC8(out0, 0, 2, dst, dst_stride);
    FUNC7(out0, 2, 6, dst + 4, dst_stride);
    FUNC8(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
    FUNC7(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
    dst += (4 * dst_stride);
    FUNC8(out2, 0, 2, dst, dst_stride);
    FUNC7(out2, 2, 6, dst + 4, dst_stride);
    FUNC8(out3, 0, 2, dst + 2 * dst_stride, dst_stride);
    FUNC7(out3, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
}