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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int FUNC3 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC18 (int) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC20(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter_x,
                                  const int8_t *filter_y)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC5(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v8i16 dst0, dst1, dst2, dst3, dst4;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 dst10_r, dst32_r, dst21_r, dst43_r;
    v8i16 dst10_l, dst32_l, dst21_l, dst43_l;
    v8i16 tmp0, tmp1;
    v8i16 in0, in1;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC7(filter_x);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC7(filter_y);
    FUNC15(filter_vec, filter_vec);

    FUNC11(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC18(128);
    const_vec <<= 6;

    FUNC6(src0_ptr, src_stride, src0, src1, src2, src3, src4);
    FUNC17(src0, src1, src2, src3, src4);

    FUNC8(src1_ptr, src2_stride, in0, in1);
    FUNC0(in0, const_vec, in1, const_vec, in0, in1);

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
    FUNC9(dst0_l, dst0_r, dst1_l, dst1_r, tmp0, tmp1);
    FUNC0(in0, tmp0, in1, tmp1, tmp0, tmp1);
    FUNC12(tmp0, tmp1, 7);
    FUNC1(tmp0, tmp1);
    out = (v16u8) FUNC19((v16i8) tmp1, (v16i8) tmp0);
    FUNC14(out, 0, 1, dst, dst_stride);
}