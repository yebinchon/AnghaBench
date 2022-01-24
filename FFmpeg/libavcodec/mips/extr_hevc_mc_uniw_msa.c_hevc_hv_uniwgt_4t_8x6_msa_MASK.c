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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC27(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter_x,
                                      const int8_t *filter_y,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1, filter_vec;
    v16i8 mask0 = FUNC6(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v16i8 vec10, vec11, vec12, vec13, vec14, vec15, vec16, vec17;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 dst4_r, dst4_l, dst5_r, dst5_l, weight_vec, rnd_vec;
    v8i16 dst10_r, dst32_r, dst10_l, dst32_l;
    v8i16 dst21_r, dst43_r, dst21_l, dst43_l;
    v8i16 dst54_r, dst54_l, dst65_r, dst65_l;
    v8i16 dst76_r, dst76_l, dst87_r, dst87_l;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    v8i16 offset_vec, const_128, denom_vec;

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
    offset_vec += FUNC26(const_128, denom_vec);

    FUNC8(src, src_stride, src0, src1, src2, src3, src4);
    src += (5 * src_stride);
    FUNC7(src, src_stride, src5, src6, src7, src8);
    FUNC23(src0, src1, src2, src3, src4);
    FUNC22(src5, src6, src7, src8);
    FUNC21(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC21(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC21(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC21(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC21(src4, src4, src4, src4, mask0, mask1, vec8, vec9);
    FUNC21(src5, src5, src5, src5, mask0, mask1, vec10, vec11);
    FUNC21(src6, src6, src6, src6, mask0, mask1, vec12, vec13);
    FUNC21(src7, src7, src7, src7, mask0, mask1, vec14, vec15);
    FUNC21(src8, src8, src8, src8, mask0, mask1, vec16, vec17);
    dst0 = FUNC4(vec0, vec1, filt0, filt1);
    dst1 = FUNC4(vec2, vec3, filt0, filt1);
    dst2 = FUNC4(vec4, vec5, filt0, filt1);
    dst3 = FUNC4(vec6, vec7, filt0, filt1);
    dst4 = FUNC4(vec8, vec9, filt0, filt1);
    dst5 = FUNC4(vec10, vec11, filt0, filt1);
    dst6 = FUNC4(vec12, vec13, filt0, filt1);
    dst7 = FUNC4(vec14, vec15, filt0, filt1);
    dst8 = FUNC4(vec16, vec17, filt0, filt1);
    FUNC5(dst1, dst0, dst10_r, dst10_l);
    FUNC5(dst2, dst1, dst21_r, dst21_l);
    FUNC5(dst3, dst2, dst32_r, dst32_l);
    FUNC5(dst4, dst3, dst43_r, dst43_l);
    FUNC5(dst5, dst4, dst54_r, dst54_l);
    FUNC5(dst6, dst5, dst65_r, dst65_l);
    FUNC5(dst7, dst6, dst76_r, dst76_l);
    FUNC5(dst8, dst7, dst87_r, dst87_l);
    dst0_r = FUNC3(dst10_r, dst32_r, filt_h0, filt_h1);
    dst0_l = FUNC3(dst10_l, dst32_l, filt_h0, filt_h1);
    dst1_r = FUNC3(dst21_r, dst43_r, filt_h0, filt_h1);
    dst1_l = FUNC3(dst21_l, dst43_l, filt_h0, filt_h1);
    dst2_r = FUNC3(dst32_r, dst54_r, filt_h0, filt_h1);
    dst2_l = FUNC3(dst32_l, dst54_l, filt_h0, filt_h1);
    dst3_r = FUNC3(dst43_r, dst65_r, filt_h0, filt_h1);
    dst3_l = FUNC3(dst43_l, dst65_l, filt_h0, filt_h1);
    dst4_r = FUNC3(dst54_r, dst76_r, filt_h0, filt_h1);
    dst4_l = FUNC3(dst54_l, dst76_l, filt_h0, filt_h1);
    dst5_r = FUNC3(dst65_r, dst87_r, filt_h0, filt_h1);
    dst5_l = FUNC3(dst65_l, dst87_l, filt_h0, filt_h1);
    FUNC17(dst0_r, dst0_l, dst1_r, dst1_l, 6);
    FUNC17(dst2_r, dst2_l, dst3_r, dst3_l, 6);
    FUNC17(dst4_r, dst4_l, dst5_r, dst5_l, 6);
    FUNC10(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
    FUNC10(dst2_r, weight_vec, dst3_r, weight_vec, dst2_r, dst3_r);
    FUNC10(dst4_r, weight_vec, dst5_r, weight_vec, dst4_r, dst5_r);
    FUNC10(dst0_l, weight_vec, dst1_l, weight_vec, dst0_l, dst1_l);
    FUNC10(dst2_l, weight_vec, dst3_l, weight_vec, dst2_l, dst3_l);
    FUNC10(dst4_l, weight_vec, dst5_l, weight_vec, dst4_l, dst5_l);
    FUNC16(dst0_r, dst0_l, dst1_r, dst1_l, rnd_vec);
    FUNC16(dst2_r, dst2_l, dst3_r, dst3_l, rnd_vec);
    FUNC16(dst4_r, dst4_l, dst5_r, dst5_l, rnd_vec);
    FUNC13(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l, dst3_r,
                tmp0, tmp1, tmp2, tmp3);
    FUNC12(dst4_l, dst4_r, dst5_l, dst5_r, tmp4, tmp5);
    FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
    FUNC0(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
    FUNC0(tmp4, offset_vec, tmp5, offset_vec, tmp4, tmp5);
    FUNC2(tmp0, tmp1, tmp2, tmp3);
    FUNC1(tmp4, tmp5);
    FUNC11(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, out0, out1, out2);
    FUNC19(out0, out1, 0, 1, 0, 1, dst, dst_stride);
    FUNC18(out2, 0, 1, dst + 4 * dst_stride, dst_stride);
}