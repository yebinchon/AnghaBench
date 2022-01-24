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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC18(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter_x,
                               const int8_t *filter_y)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v16i8 vec10, vec11, vec12, vec13, vec14, vec15, vec16, vec17;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 dst4_r, dst4_l, dst5_r, dst5_l;
    v8i16 dst10_r, dst32_r, dst10_l, dst32_l;
    v8i16 dst21_r, dst43_r, dst21_l, dst43_l;
    v8i16 dst54_r, dst54_l, dst65_r, dst65_l;
    v8i16 dst76_r, dst76_l, dst87_r, dst87_l;

    src -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC13(filter_vec, filter_vec);

    FUNC10(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC17(128);
    const_vec <<= 6;

    FUNC5(src, src_stride, src0, src1, src2, src3, src4);
    src += (5 * src_stride);
    FUNC4(src, src_stride, src5, src6, src7, src8);

    FUNC16(src0, src1, src2, src3, src4);
    FUNC15(src5, src6, src7, src8);

    FUNC14(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC14(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC14(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC14(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC14(src4, src4, src4, src4, mask0, mask1, vec8, vec9);
    FUNC14(src5, src5, src5, src5, mask0, mask1, vec10, vec11);
    FUNC14(src6, src6, src6, src6, mask0, mask1, vec12, vec13);
    FUNC14(src7, src7, src7, src7, mask0, mask1, vec14, vec15);
    FUNC14(src8, src8, src8, src8, mask0, mask1, vec16, vec17);

    dst0 = const_vec;
    FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);
    dst1 = const_vec;
    FUNC0(vec2, vec3, filt0, filt1, dst1, dst1);
    dst2 = const_vec;
    FUNC0(vec4, vec5, filt0, filt1, dst2, dst2);
    dst3 = const_vec;
    FUNC0(vec6, vec7, filt0, filt1, dst3, dst3);
    dst4 = const_vec;
    FUNC0(vec8, vec9, filt0, filt1, dst4, dst4);
    dst5 = const_vec;
    FUNC0(vec10, vec11, filt0, filt1, dst5, dst5);
    dst6 = const_vec;
    FUNC0(vec12, vec13, filt0, filt1, dst6, dst6);
    dst7 = const_vec;
    FUNC0(vec14, vec15, filt0, filt1, dst7, dst7);
    dst8 = const_vec;
    FUNC0(vec16, vec17, filt0, filt1, dst8, dst8);

    FUNC2(dst1, dst0, dst10_r, dst10_l);
    FUNC2(dst2, dst1, dst21_r, dst21_l);
    FUNC2(dst3, dst2, dst32_r, dst32_l);
    FUNC2(dst4, dst3, dst43_r, dst43_l);
    FUNC2(dst5, dst4, dst54_r, dst54_l);
    FUNC2(dst6, dst5, dst65_r, dst65_l);
    FUNC2(dst7, dst6, dst76_r, dst76_l);
    FUNC2(dst8, dst7, dst87_r, dst87_l);

    dst0_r = FUNC1(dst10_r, dst32_r, filt_h0, filt_h1);
    dst0_l = FUNC1(dst10_l, dst32_l, filt_h0, filt_h1);
    dst1_r = FUNC1(dst21_r, dst43_r, filt_h0, filt_h1);
    dst1_l = FUNC1(dst21_l, dst43_l, filt_h0, filt_h1);
    dst2_r = FUNC1(dst32_r, dst54_r, filt_h0, filt_h1);
    dst2_l = FUNC1(dst32_l, dst54_l, filt_h0, filt_h1);
    dst3_r = FUNC1(dst43_r, dst65_r, filt_h0, filt_h1);
    dst3_l = FUNC1(dst43_l, dst65_l, filt_h0, filt_h1);
    dst4_r = FUNC1(dst54_r, dst76_r, filt_h0, filt_h1);
    dst4_l = FUNC1(dst54_l, dst76_l, filt_h0, filt_h1);
    dst5_r = FUNC1(dst65_r, dst87_r, filt_h0, filt_h1);
    dst5_l = FUNC1(dst65_l, dst87_l, filt_h0, filt_h1);

    FUNC11(dst0_r, dst0_l, dst1_r, dst1_l, 6);
    FUNC11(dst2_r, dst2_l, dst3_r, dst3_l, 6);
    FUNC11(dst4_r, dst4_l, dst5_r, dst5_l, 6);

    FUNC8(dst0_l, dst0_r, dst1_l, dst1_r,
                dst2_l, dst2_r, dst3_l, dst3_r, dst0_r, dst1_r, dst2_r, dst3_r);
    FUNC7(dst4_l, dst4_r, dst5_l, dst5_r, dst4_r, dst5_r);

    FUNC12(dst0_r, dst1_r, dst, dst_stride);
    dst += (2 * dst_stride);
    FUNC12(dst2_r, dst3_r, dst, dst_stride);
    dst += (2 * dst_stride);
    FUNC12(dst4_r, dst5_r, dst, dst_stride);
}