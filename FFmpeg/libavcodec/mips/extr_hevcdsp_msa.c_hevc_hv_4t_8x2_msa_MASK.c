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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC15(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter_x,
                               const int8_t *filter_y)
{
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v8i16 dst0, dst1, dst2, dst3, dst4;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 dst10_r, dst32_r, dst21_r, dst43_r;
    v8i16 dst10_l, dst32_l, dst21_l, dst43_l;

    src -= (src_stride + 1);

    filter_vec = FUNC5(filter_x);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC5(filter_y);
    FUNC11(filter_vec, filter_vec);

    FUNC8(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC14(128);
    const_vec <<= 6;

    FUNC4(src, src_stride, src0, src1, src2, src3, src4);
    FUNC13(src0, src1, src2, src3, src4);

    FUNC12(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC12(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC12(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC12(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC12(src4, src4, src4, src4, mask0, mask1, vec8, vec9);

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

    FUNC2(dst1, dst0, dst10_r, dst10_l);
    FUNC2(dst2, dst1, dst21_r, dst21_l);
    FUNC2(dst3, dst2, dst32_r, dst32_l);
    FUNC2(dst4, dst3, dst43_r, dst43_l);
    dst0_r = FUNC1(dst10_r, dst32_r, filt_h0, filt_h1);
    dst0_l = FUNC1(dst10_l, dst32_l, filt_h0, filt_h1);
    dst1_r = FUNC1(dst21_r, dst43_r, filt_h0, filt_h1);
    dst1_l = FUNC1(dst21_l, dst43_l, filt_h0, filt_h1);
    FUNC9(dst0_r, dst0_l, dst1_r, dst1_l, 6);
    FUNC6(dst0_l, dst0_r, dst1_l, dst1_r, dst0_r, dst1_r);
    FUNC10(dst0_r, dst1_r, dst, dst_stride);
}