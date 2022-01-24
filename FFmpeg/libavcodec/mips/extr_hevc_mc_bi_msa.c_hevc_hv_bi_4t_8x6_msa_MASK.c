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
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int FUNC5 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC26 (int) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC28(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter_x,
                                  const int8_t *filter_y)
{
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 in0, in1, in2, in3, in4, in5;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC7(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v16i8 vec10, vec11, vec12, vec13, vec14, vec15, vec16, vec17;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 dst4_r, dst4_l, dst5_r, dst5_l;
    v8i16 dst10_r, dst32_r, dst10_l, dst32_l;
    v8i16 dst21_r, dst43_r, dst21_l, dst43_l;
    v8i16 dst54_r, dst54_l, dst65_r, dst65_l;
    v8i16 dst76_r, dst76_l, dst87_r, dst87_l;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC10(filter_x);
    FUNC15(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC10(filter_y);
    FUNC22(filter_vec, filter_vec);

    FUNC16(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC26(128);
    const_vec <<= 6;

    FUNC9(src0_ptr, src_stride, src0, src1, src2, src3, src4);
    src0_ptr += (5 * src_stride);
    FUNC8(src0_ptr, src_stride, src5, src6, src7, src8);

    FUNC25(src0, src1, src2, src3, src4);
    FUNC24(src5, src6, src7, src8);

    FUNC11(src1_ptr, src2_stride, in0, in1, in2, in3, in4, in5);
    FUNC1(in0, const_vec, in1, const_vec, in2, const_vec, in3, const_vec,
                in0, in1, in2, in3);
    FUNC0(in4, const_vec, in5, const_vec, in4, in5);

    FUNC23(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC23(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC23(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC23(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC23(src4, src4, src4, src4, mask0, mask1, vec8, vec9);
    FUNC23(src5, src5, src5, src5, mask0, mask1, vec10, vec11);
    FUNC23(src6, src6, src6, src6, mask0, mask1, vec12, vec13);
    FUNC23(src7, src7, src7, src7, mask0, mask1, vec14, vec15);
    FUNC23(src8, src8, src8, src8, mask0, mask1, vec16, vec17);

    dst0 = FUNC5(vec0, vec1, filt0, filt1);
    dst1 = FUNC5(vec2, vec3, filt0, filt1);
    dst2 = FUNC5(vec4, vec5, filt0, filt1);
    dst3 = FUNC5(vec6, vec7, filt0, filt1);
    dst4 = FUNC5(vec8, vec9, filt0, filt1);
    dst5 = FUNC5(vec10, vec11, filt0, filt1);
    dst6 = FUNC5(vec12, vec13, filt0, filt1);
    dst7 = FUNC5(vec14, vec15, filt0, filt1);
    dst8 = FUNC5(vec16, vec17, filt0, filt1);

    FUNC6(dst1, dst0, dst10_r, dst10_l);
    FUNC6(dst2, dst1, dst21_r, dst21_l);
    FUNC6(dst3, dst2, dst32_r, dst32_l);
    FUNC6(dst4, dst3, dst43_r, dst43_l);
    FUNC6(dst5, dst4, dst54_r, dst54_l);
    FUNC6(dst6, dst5, dst65_r, dst65_l);
    FUNC6(dst7, dst6, dst76_r, dst76_l);
    FUNC6(dst8, dst7, dst87_r, dst87_l);

    dst0_r = FUNC4(dst10_r, dst32_r, filt_h0, filt_h1);
    dst0_l = FUNC4(dst10_l, dst32_l, filt_h0, filt_h1);
    dst1_r = FUNC4(dst21_r, dst43_r, filt_h0, filt_h1);
    dst1_l = FUNC4(dst21_l, dst43_l, filt_h0, filt_h1);
    dst2_r = FUNC4(dst32_r, dst54_r, filt_h0, filt_h1);
    dst2_l = FUNC4(dst32_l, dst54_l, filt_h0, filt_h1);
    dst3_r = FUNC4(dst43_r, dst65_r, filt_h0, filt_h1);
    dst3_l = FUNC4(dst43_l, dst65_l, filt_h0, filt_h1);
    dst4_r = FUNC4(dst54_r, dst76_r, filt_h0, filt_h1);
    dst4_l = FUNC4(dst54_l, dst76_l, filt_h0, filt_h1);
    dst5_r = FUNC4(dst65_r, dst87_r, filt_h0, filt_h1);
    dst5_l = FUNC4(dst65_l, dst87_l, filt_h0, filt_h1);

    FUNC19(dst0_r, dst0_l, dst1_r, dst1_l, 6);
    FUNC19(dst2_r, dst2_l, dst3_r, dst3_l, 6);
    FUNC19(dst4_r, dst4_l, dst5_r, dst5_l, 6);
    FUNC14(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l, dst3_r,
                tmp0, tmp1, tmp2, tmp3);
    FUNC13(dst4_l, dst4_r, dst5_l, dst5_r, tmp4, tmp5);
    FUNC1(in0, tmp0, in1, tmp1, in2, tmp2, in3, tmp3,
                tmp0, tmp1, tmp2, tmp3);
    FUNC0(in4, tmp4, in5, tmp5, tmp4, tmp5);
    FUNC18(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC17(tmp4, tmp5, 7);
    FUNC3(tmp0, tmp1, tmp2, tmp3);
    FUNC2(tmp4, tmp5);
    FUNC12(tmp1, tmp0, tmp3, tmp2, out0, out1);
    out2 = (v16u8) FUNC27((v16i8) tmp5, (v16i8) tmp4);
    FUNC21(out0, out1, 0, 1, 0, 1, dst, dst_stride);
    FUNC20(out2, 0, 1, dst + 4 * dst_stride, dst_stride);
}