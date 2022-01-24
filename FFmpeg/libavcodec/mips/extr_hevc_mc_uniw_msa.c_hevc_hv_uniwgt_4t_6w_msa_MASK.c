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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC28(uint8_t *src,
                                     int32_t src_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter_x,
                                     const int8_t *filter_y,
                                     int32_t height,
                                     int32_t weight,
                                     int32_t offset,
                                     int32_t rnd_val)
{
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 filt0, filt1;
    v16i8 mask0 = FUNC6(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filt_h0, filt_h1, filter_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dsth0, dsth1, dsth2, dsth3, dsth4, dsth5, dsth6, dsth7, dsth8, dsth9;
    v8i16 dsth10, tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r, dst98_r, dst21_r, dst43_r;
    v8i16 dst65_r, dst87_r, dst109_r, dst10_l, dst32_l, dst54_l, dst76_l;
    v8i16 dst98_l, dst21_l, dst43_l, dst65_l, dst87_l, dst109_l;
    v8i16 dst1021_l, dst3243_l, dst5465_l, dst7687_l, dst98109_l;
    v8i16 offset_vec, const_128, denom_vec;
    v4i32 dst0_r, dst1_r, dst2_r, dst3_r, dst4_r, dst5_r, dst6_r, dst7_r;
    v4i32 dst0_l, dst1_l, dst2_l, dst3_l, weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = FUNC9(filter_x);
    FUNC14(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC9(filter_y);
    FUNC20(filter_vec, filter_vec);

    FUNC15(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    weight_vec = FUNC25(weight);
    rnd_vec = FUNC25(rnd_val);

    offset_vec = FUNC24(offset);
    denom_vec = FUNC24(rnd_val - 6);
    const_128 = FUNC24((128 * weight));
    offset_vec += FUNC27(const_128, denom_vec);

    FUNC7(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC22(src0, src1, src2);

    FUNC21(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC21(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC21(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    dsth0 = FUNC4(vec0, vec1, filt0, filt1);
    dsth1 = FUNC4(vec2, vec3, filt0, filt1);
    dsth2 = FUNC4(vec4, vec5, filt0, filt1);
    FUNC5(dsth1, dsth0, dst10_r, dst10_l);
    FUNC5(dsth2, dsth1, dst21_r, dst21_l);

    FUNC8(src, src_stride, src3, src4, src5, src6, src7, src8, src9, src10);
    FUNC23(src3, src4, src5, src6, src7, src8, src9, src10);
    FUNC21(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
    FUNC21(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
    FUNC21(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
    FUNC21(src6, src6, src6, src6, mask0, mask1, vec6, vec7);
    dsth3 = FUNC4(vec0, vec1, filt0, filt1);
    dsth4 = FUNC4(vec2, vec3, filt0, filt1);
    dsth5 = FUNC4(vec4, vec5, filt0, filt1);
    dsth6 = FUNC4(vec6, vec7, filt0, filt1);
    FUNC21(src7, src7, src7, src7, mask0, mask1, vec0, vec1);
    FUNC21(src8, src8, src8, src8, mask0, mask1, vec2, vec3);
    FUNC21(src9, src9, src9, src9, mask0, mask1, vec4, vec5);
    FUNC21(src10, src10, src10, src10, mask0, mask1, vec6, vec7);
    dsth7 = FUNC4(vec0, vec1, filt0, filt1);
    dsth8 = FUNC4(vec2, vec3, filt0, filt1);
    dsth9 = FUNC4(vec4, vec5, filt0, filt1);
    dsth10 = FUNC4(vec6, vec7, filt0, filt1);
    FUNC5(dsth3, dsth2, dst32_r, dst32_l);
    FUNC5(dsth4, dsth3, dst43_r, dst43_l);
    FUNC5(dsth5, dsth4, dst54_r, dst54_l);
    FUNC5(dsth6, dsth5, dst65_r, dst65_l);
    FUNC5(dsth7, dsth6, dst76_r, dst76_l);
    FUNC5(dsth8, dsth7, dst87_r, dst87_l);
    FUNC5(dsth9, dsth8, dst98_r, dst98_l);
    FUNC5(dsth10, dsth9, dst109_r, dst109_l);
    FUNC12(dst21_l, dst10_l, dst43_l, dst32_l, dst1021_l, dst3243_l);
    FUNC12(dst65_l, dst54_l, dst87_l, dst76_l, dst5465_l, dst7687_l);
    dst98109_l = (v8i16) FUNC26((v2i64) dst109_l, (v2i64) dst98_l);
    dst0_r = FUNC3(dst10_r, dst32_r, filt_h0, filt_h1);
    dst1_r = FUNC3(dst21_r, dst43_r, filt_h0, filt_h1);
    dst2_r = FUNC3(dst32_r, dst54_r, filt_h0, filt_h1);
    dst3_r = FUNC3(dst43_r, dst65_r, filt_h0, filt_h1);
    dst4_r = FUNC3(dst54_r, dst76_r, filt_h0, filt_h1);
    dst5_r = FUNC3(dst65_r, dst87_r, filt_h0, filt_h1);
    dst6_r = FUNC3(dst76_r, dst98_r, filt_h0, filt_h1);
    dst7_r = FUNC3(dst87_r, dst109_r, filt_h0, filt_h1);
    dst0_l = FUNC3(dst1021_l, dst3243_l, filt_h0, filt_h1);
    dst1_l = FUNC3(dst3243_l, dst5465_l, filt_h0, filt_h1);
    dst2_l = FUNC3(dst5465_l, dst7687_l, filt_h0, filt_h1);
    dst3_l = FUNC3(dst7687_l, dst98109_l, filt_h0, filt_h1);
    FUNC17(dst0_r, dst1_r, dst2_r, dst3_r, 6);
    FUNC17(dst4_r, dst5_r, dst6_r, dst7_r, 6);
    FUNC17(dst0_l, dst1_l, dst2_l, dst3_l, 6);
    FUNC10(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
    FUNC10(dst2_r, weight_vec, dst3_r, weight_vec, dst2_r, dst3_r);
    FUNC10(dst4_r, weight_vec, dst5_r, weight_vec, dst4_r, dst5_r);
    FUNC10(dst6_r, weight_vec, dst7_r, weight_vec, dst6_r, dst7_r);
    FUNC10(dst0_l, weight_vec, dst1_l, weight_vec, dst0_l, dst1_l);
    FUNC10(dst2_l, weight_vec, dst3_l, weight_vec, dst2_l, dst3_l);
    FUNC16(dst0_r, dst1_r, dst2_r, dst3_r, rnd_vec);
    FUNC16(dst4_r, dst5_r, dst6_r, dst7_r, rnd_vec);
    FUNC16(dst0_l, dst1_l, dst2_l, dst3_l, rnd_vec);
    FUNC13(dst1_r, dst0_r, dst3_r, dst2_r, tmp0, tmp1);
    FUNC13(dst5_r, dst4_r, dst7_r, dst6_r, tmp2, tmp3);
    FUNC13(dst1_l, dst0_l, dst3_l, dst2_l, tmp4, tmp5);
    FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
    FUNC0(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
    FUNC0(tmp4, offset_vec, tmp5, offset_vec, tmp4, tmp5);
    FUNC2(tmp0, tmp1, tmp2, tmp3);
    FUNC1(tmp4, tmp5);
    FUNC11(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, out0, out1, out2);
    FUNC19(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
    FUNC18(out2, 0, 1, 2, 3, 4, 5, 6, 7, dst + 4, dst_stride);
}