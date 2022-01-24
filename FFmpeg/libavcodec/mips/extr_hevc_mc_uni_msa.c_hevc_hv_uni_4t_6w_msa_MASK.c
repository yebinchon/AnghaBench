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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC24(uint8_t *src,
                                  int32_t src_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter_x,
                                  const int8_t *filter_y,
                                  int32_t height)
{
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src7, src8, src9, src10;
    v8i16 filt0, filt1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filt_h0, filt_h1, filter_vec;
    v8i16 dsth0, dsth1, dsth2, dsth3, dsth4, dsth5, dsth6, dsth7, dsth8, dsth9;
    v8i16 dsth10, tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 dst4_r, dst5_r, dst6_r, dst7_r;
    v8i16 dst10_r, dst32_r, dst21_r, dst43_r;
    v8i16 dst10_l, dst32_l, dst21_l, dst43_l;
    v8i16 dst54_r, dst76_r, dst98_r, dst65_r, dst87_r, dst109_r;
    v8i16 dst98_l, dst65_l, dst54_l, dst76_l, dst87_l, dst109_l;
    v8i16 dst1021_l, dst3243_l, dst5465_l, dst7687_l, dst98109_l;

    src -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC12(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC19(filter_vec, filter_vec);

    FUNC13(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    FUNC4(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC21(src0, src1, src2);

    FUNC20(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC20(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC20(src2, src2, src2, src2, mask0, mask1, vec4, vec5);

    dsth0 = FUNC1(vec0, vec1, filt0, filt1);
    dsth1 = FUNC1(vec2, vec3, filt0, filt1);
    dsth2 = FUNC1(vec4, vec5, filt0, filt1);

    FUNC2(dsth1, dsth0, dst10_r, dst10_l);
    FUNC2(dsth2, dsth1, dst21_r, dst21_l);

    FUNC5(src, src_stride, src3, src4, src5, src6, src7, src8, src9, src10);
    FUNC22(src3, src4, src5, src6, src7, src8, src9, src10);

    FUNC20(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
    FUNC20(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
    FUNC20(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
    FUNC20(src6, src6, src6, src6, mask0, mask1, vec6, vec7);

    dsth3 = FUNC1(vec0, vec1, filt0, filt1);
    dsth4 = FUNC1(vec2, vec3, filt0, filt1);
    dsth5 = FUNC1(vec4, vec5, filt0, filt1);
    dsth6 = FUNC1(vec6, vec7, filt0, filt1);

    FUNC20(src7, src7, src7, src7, mask0, mask1, vec0, vec1);
    FUNC20(src8, src8, src8, src8, mask0, mask1, vec2, vec3);
    FUNC20(src9, src9, src9, src9, mask0, mask1, vec4, vec5);
    FUNC20(src10, src10, src10, src10, mask0, mask1, vec6, vec7);

    dsth7 = FUNC1(vec0, vec1, filt0, filt1);
    dsth8 = FUNC1(vec2, vec3, filt0, filt1);
    dsth9 = FUNC1(vec4, vec5, filt0, filt1);
    dsth10 = FUNC1(vec6, vec7, filt0, filt1);

    FUNC2(dsth3, dsth2, dst32_r, dst32_l);
    FUNC2(dsth4, dsth3, dst43_r, dst43_l);
    FUNC2(dsth5, dsth4, dst54_r, dst54_l);
    FUNC2(dsth6, dsth5, dst65_r, dst65_l);
    FUNC2(dsth7, dsth6, dst76_r, dst76_l);
    FUNC2(dsth8, dsth7, dst87_r, dst87_l);
    FUNC2(dsth9, dsth8, dst98_r, dst98_l);
    FUNC2(dsth10, dsth9, dst109_r, dst109_l);

    FUNC7(dst21_l, dst10_l, dst43_l, dst32_l, dst1021_l, dst3243_l);
    FUNC7(dst65_l, dst54_l, dst87_l, dst76_l, dst5465_l, dst7687_l);
    dst98109_l = (v8i16) FUNC23((v2i64) dst109_l, (v2i64) dst98_l);

    dst0_r = FUNC0(dst10_r, dst32_r, filt_h0, filt_h1);
    dst1_r = FUNC0(dst21_r, dst43_r, filt_h0, filt_h1);
    dst2_r = FUNC0(dst32_r, dst54_r, filt_h0, filt_h1);
    dst3_r = FUNC0(dst43_r, dst65_r, filt_h0, filt_h1);
    dst4_r = FUNC0(dst54_r, dst76_r, filt_h0, filt_h1);
    dst5_r = FUNC0(dst65_r, dst87_r, filt_h0, filt_h1);
    dst6_r = FUNC0(dst76_r, dst98_r, filt_h0, filt_h1);
    dst7_r = FUNC0(dst87_r, dst109_r, filt_h0, filt_h1);
    dst0_l = FUNC0(dst1021_l, dst3243_l, filt_h0, filt_h1);
    dst1_l = FUNC0(dst3243_l, dst5465_l, filt_h0, filt_h1);
    dst2_l = FUNC0(dst5465_l, dst7687_l, filt_h0, filt_h1);
    dst3_l = FUNC0(dst7687_l, dst98109_l, filt_h0, filt_h1);
    FUNC16(dst0_r, dst1_r, dst2_r, dst3_r, 6);
    FUNC16(dst4_r, dst5_r, dst6_r, dst7_r, 6);
    FUNC16(dst0_l, dst1_l, dst2_l, dst3_l, 6);
    FUNC8(dst1_r, dst0_r, dst3_r, dst2_r, tmp0, tmp1);
    FUNC8(dst5_r, dst4_r, dst7_r, dst6_r, tmp2, tmp3);
    FUNC8(dst1_l, dst0_l, dst3_l, dst2_l, tmp4, tmp5);
    FUNC15(tmp0, tmp1, tmp2, tmp3, 6);
    FUNC14(tmp4, tmp5, 6);
    FUNC11(tmp0, tmp1, tmp2, tmp3,7);
    FUNC10(tmp4, tmp5,7);
    out0 = FUNC9(tmp0, tmp1);
    out1 = FUNC9(tmp2, tmp3);
    out2 = FUNC9(tmp4, tmp5);
    FUNC18(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
    FUNC17(out2, 0, 1, 2, 3, 4, 5, 6, 7, dst + 4, dst_stride);
}