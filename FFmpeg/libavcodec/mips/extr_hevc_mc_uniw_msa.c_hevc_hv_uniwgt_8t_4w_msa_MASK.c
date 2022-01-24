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
typedef  scalar_t__ v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC26(uint8_t *src,
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
    uint32_t loop_cnt;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filt_h0, filt_h1, filt_h2, filt_h3;
    v16i8 mask1, mask2, mask3;
    v8i16 filter_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 dst30, dst41, dst52, dst63, dst66, dst97, dst108;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r, dst98_r;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r, dst109_r;
    v4i32 dst0_r, dst1_r, dst2_r, dst3_r;
    v4i32 weight_vec, offset_vec, rnd_vec, const_128, denom_vec;
    v16i8 mask0 = FUNC5(ff_hevc_mask_arr + 16);

    src -= ((3 * src_stride) + 3);
    filter_vec = FUNC8(filter_x);
    FUNC11(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC8(filter_y);
    FUNC16(filter_vec, filter_vec);

    FUNC12(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    weight_vec = FUNC20(weight);
    offset_vec = FUNC20(offset);
    rnd_vec = FUNC20(rnd_val);
    denom_vec = rnd_vec - 6;

    const_128 = FUNC22(128);
    const_128 *= weight_vec;
    offset_vec += FUNC25(const_128, denom_vec);

    FUNC7(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);
    FUNC19(src0, src1, src2, src3, src4, src5, src6);

    /* row 0 row 1 row 2 row 3 */
    FUNC17(src0, src3, mask0, mask1, mask2, mask3, vec0, vec1, vec2, vec3);
    FUNC17(src1, src4, mask0, mask1, mask2, mask3, vec4, vec5, vec6, vec7);
    FUNC17(src2, src5, mask0, mask1, mask2, mask3,
               vec8, vec9, vec10, vec11);
    FUNC17(src3, src6, mask0, mask1, mask2, mask3,
               vec12, vec13, vec14, vec15);
    dst30 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                              filt3);
    dst41 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                              filt3);
    dst52 = FUNC3(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                              filt3);
    dst63 = FUNC3(vec12, vec13, vec14, vec15, filt0, filt1, filt2,
                              filt3);

    FUNC4(dst41, dst30, dst10_r, dst43_r);
    FUNC4(dst52, dst41, dst21_r, dst54_r);
    FUNC4(dst63, dst52, dst32_r, dst65_r);

    dst66 = (v8i16) FUNC24((v2i64) dst63, 1);

    for (loop_cnt = height >> 2; loop_cnt--;) {
        FUNC6(src, src_stride, src7, src8, src9, src10);
        src += (4 * src_stride);
        FUNC18(src7, src8, src9, src10);

        FUNC17(src7, src9, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC17(src8, src10, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        dst97 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                  filt3);
        dst108 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                   filt3);

        dst76_r = FUNC21(dst97, dst66);
        FUNC4(dst108, dst97, dst87_r, dst109_r);
        dst66 = (v8i16) FUNC24((v2i64) dst97, 1);
        dst98_r = FUNC21(dst66, dst108);

        dst0_r = FUNC2(dst10_r, dst32_r, dst54_r, dst76_r, filt_h0,
                                filt_h1, filt_h2, filt_h3);
        dst1_r = FUNC2(dst21_r, dst43_r, dst65_r, dst87_r, filt_h0,
                                filt_h1, filt_h2, filt_h3);
        dst2_r = FUNC2(dst32_r, dst54_r, dst76_r, dst98_r, filt_h0,
                                filt_h1, filt_h2, filt_h3);
        dst3_r = FUNC2(dst43_r, dst65_r, dst87_r, dst109_r, filt_h0,
                                filt_h1, filt_h2, filt_h3);

        FUNC14(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        FUNC9(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
        FUNC9(dst2_r, weight_vec, dst3_r, weight_vec, dst2_r, dst3_r);
        FUNC13(dst0_r, dst1_r, dst2_r, dst3_r, rnd_vec);
        FUNC0(dst0_r, offset_vec, dst1_r, offset_vec, dst0_r, dst1_r);
        FUNC0(dst2_r, offset_vec, dst3_r, offset_vec, dst2_r, dst3_r);
        FUNC1(dst0_r, dst1_r, dst2_r, dst3_r);
        FUNC10(dst1_r, dst0_r, dst3_r, dst2_r, dst0_r, dst1_r);
        out = (v16u8) FUNC23((v16i8) dst1_r, (v16i8) dst0_r);
        FUNC15(out, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);

        dst10_r = dst54_r;
        dst32_r = dst76_r;
        dst54_r = dst98_r;
        dst21_r = dst65_r;
        dst43_r = dst87_r;
        dst65_r = dst109_r;
        dst66 = (v8i16) FUNC24((v2i64) dst108, 1);
    }
}