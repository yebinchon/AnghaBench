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
typedef  int v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC17 (int,scalar_t__,scalar_t__) ; 
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
                                     const int8_t *filter_y,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    int32_t weight, offset;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC4(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec, weight_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v8i16 dst0, dst1, dst2, dst3, dst4;
    v8i16 in0, in1;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 dst10_r, dst32_r, dst21_r, dst43_r;
    v8i16 dst10_l, dst32_l, dst21_l, dst43_l;
    v8i16 tmp0, tmp1, tmp2, tmp3;
    v4i32 offset_vec, rnd_vec, const_vec;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC14(filter_vec, filter_vec);

    FUNC10(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    const_vec = FUNC18((128 * weight1));
    const_vec <<= 6;
    offset_vec = FUNC18(offset);
    weight_vec = (v8i16) FUNC18(weight);
    rnd_vec = FUNC18(rnd_val + 1);
    offset_vec += const_vec;

    FUNC5(src0_ptr, src_stride, src0, src1, src2, src3, src4);
    FUNC16(src0, src1, src2, src3, src4);

    FUNC7(src1_ptr, src2_stride, in0, in1);

    FUNC15(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC15(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC15(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    FUNC15(src3, src3, src3, src3, mask0, mask1, vec6, vec7);
    FUNC15(src4, src4, src4, src4, mask0, mask1, vec8, vec9);

    dst0 = FUNC2(vec0, vec1, filt0, filt1);
    dst1 = FUNC2(vec2, vec3, filt0, filt1);
    dst2 = FUNC2(vec4, vec5, filt0, filt1);
    dst3 = FUNC2(vec6, vec7, filt0, filt1);
    dst4 = FUNC2(vec8, vec9, filt0, filt1);

    FUNC3(dst1, dst0, dst10_r, dst10_l);
    FUNC3(dst2, dst1, dst21_r, dst21_l);
    FUNC3(dst3, dst2, dst32_r, dst32_l);
    FUNC3(dst4, dst3, dst43_r, dst43_l);
    dst0_r = FUNC1(dst10_r, dst32_r, filt_h0, filt_h1);
    dst0_l = FUNC1(dst10_l, dst32_l, filt_h0, filt_h1);
    dst1_r = FUNC1(dst21_r, dst43_r, filt_h0, filt_h1);
    dst1_l = FUNC1(dst21_l, dst43_l, filt_h0, filt_h1);
    FUNC12(dst0_r, dst0_l, dst1_r, dst1_l, 6);
    FUNC8(dst0_l, dst0_r, dst1_l, dst1_r, tmp1, tmp3);

    FUNC3(tmp1, in0, tmp0, tmp1);
    FUNC3(tmp3, in1, tmp2, tmp3);

    dst0_r = FUNC17(offset_vec, tmp0, weight_vec);
    dst0_l = FUNC17(offset_vec, tmp1, weight_vec);
    dst1_r = FUNC17(offset_vec, tmp2, weight_vec);
    dst1_l = FUNC17(offset_vec, tmp3, weight_vec);
    FUNC11(dst0_r, dst0_l, dst1_r, dst1_l, rnd_vec);
    FUNC8(dst0_l, dst0_r, dst1_l, dst1_r, tmp0, tmp1);
    FUNC0(tmp0, tmp1);
    out = (v16u8) FUNC19((v16i8) tmp1, (v16i8) tmp0);
    FUNC13(out, 0, 1, dst, dst_stride);
}