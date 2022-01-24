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
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC22(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter_x,
                                      const int8_t *filter_y,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1, filter_vec;
    v16i8 mask0 = FUNC5(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v8i16 dst0, dst1, dst2, dst3, dst4;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 dst10_r, dst32_r, dst21_r, dst43_r;
    v8i16 dst10_l, dst32_l, dst21_l, dst43_l;
    v8i16 tmp0, tmp1;
    v8i16 offset_vec, const_128, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = FUNC7(filter_x);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC7(filter_y);
    FUNC15(filter_vec, filter_vec);

    FUNC11(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    weight_vec = FUNC19(weight);
    rnd_vec = FUNC19(rnd_val);

    offset_vec = FUNC18(offset);
    denom_vec = FUNC18(rnd_val - 6);
    const_128 = FUNC18((128 * weight));
    offset_vec += FUNC21(const_128, denom_vec);

    FUNC6(src, src_stride, src0, src1, src2, src3, src4);
    FUNC17(src0, src1, src2, src3, src4);
    FUNC16(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC16(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC16(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC16(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC16(src4, src4, src4, src4, mask0, mask1, vec8, vec9);
    dst0 = FUNC3(vec0, vec1, filt0, filt1);
    dst1 = FUNC3(vec2, vec3, filt0, filt1);
    dst2 = FUNC3(vec4, vec5, filt0, filt1);
    dst3 = FUNC3(vec6, vec7, filt0, filt1);
    dst4 = FUNC3(vec8, vec9, filt0, filt1);
    FUNC4(dst1, dst0, dst10_r, dst10_l);
    FUNC4(dst2, dst1, dst21_r, dst21_l);
    FUNC4(dst3, dst2, dst32_r, dst32_l);
    FUNC4(dst4, dst3, dst43_r, dst43_l);
    dst0_r = FUNC2(dst10_r, dst32_r, filt_h0, filt_h1);
    dst0_l = FUNC2(dst10_l, dst32_l, filt_h0, filt_h1);
    dst1_r = FUNC2(dst21_r, dst43_r, filt_h0, filt_h1);
    dst1_l = FUNC2(dst21_l, dst43_l, filt_h0, filt_h1);
    FUNC13(dst0_r, dst0_l, dst1_r, dst1_l, 6);
    FUNC8(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
    FUNC8(dst0_l, weight_vec, dst1_l, weight_vec, dst0_l, dst1_l);
    FUNC12(dst0_r, dst0_l, dst1_r, dst1_l, rnd_vec);
    FUNC9(dst0_l, dst0_r, dst1_l, dst1_r, tmp0, tmp1);
    FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
    FUNC1(tmp0, tmp1);
    out = (v16u8) FUNC20((v16i8) tmp1, (v16i8) tmp0);
    FUNC14(out, 0, 1, dst, dst_stride);
}