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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC16 (int,int) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC19(uint8_t *src, int32_t src_stride,
                              int16_t *dst, int32_t dst_stride,
                              const int8_t *filter_x, const int8_t *filter_y,
                              int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filt_h0, filt_h1, filt_h2, filt_h3;
    v16i8 mask1, mask2, mask3;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 dst30, dst41, dst52, dst63, dst66, dst97, dst108;
    v4i32 dst0_r, dst1_r, dst2_r, dst3_r;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r, dst98_r;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r, dst109_r;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr + 16);

    src -= ((3 * src_stride) + 3);
    filter_vec = FUNC6(filter_x);
    FUNC8(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC6(filter_y);
    FUNC12(filter_vec, filter_vec);

    FUNC9(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    const_vec = FUNC17(128);
    const_vec <<= 6;

    FUNC5(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);
    FUNC15(src0, src1, src2, src3, src4, src5, src6);

    FUNC13(src0, src3, mask0, mask1, mask2, mask3, vec0, vec1, vec2, vec3);
    FUNC13(src1, src4, mask0, mask1, mask2, mask3, vec4, vec5, vec6, vec7);
    FUNC13(src2, src5, mask0, mask1, mask2, mask3,
               vec8, vec9, vec10, vec11);
    FUNC13(src3, src6, mask0, mask1, mask2, mask3,
               vec12, vec13, vec14, vec15);
    dst30 = const_vec;
    FUNC0(vec0, vec1, vec2, vec3, filt0, filt1, filt2, filt3,
                 dst30, dst30, dst30, dst30);
    dst41 = const_vec;
    FUNC0(vec4, vec5, vec6, vec7, filt0, filt1, filt2, filt3,
                 dst41, dst41, dst41, dst41);
    dst52 = const_vec;
    FUNC0(vec8, vec9, vec10, vec11, filt0, filt1, filt2, filt3,
                 dst52, dst52, dst52, dst52);
    dst63 = const_vec;
    FUNC0(vec12, vec13, vec14, vec15, filt0, filt1, filt2, filt3,
                 dst63, dst63, dst63, dst63);

    FUNC2(dst41, dst30, dst10_r, dst43_r);
    FUNC2(dst52, dst41, dst21_r, dst54_r);
    FUNC2(dst63, dst52, dst32_r, dst65_r);
    dst66 = (v8i16) FUNC18((v2i64) dst63, 1);

    for (loop_cnt = height >> 2; loop_cnt--;) {
        FUNC4(src, src_stride, src7, src8, src9, src10);
        src += (4 * src_stride);
        FUNC14(src7, src8, src9, src10);

        FUNC13(src7, src9, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC13(src8, src10, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        dst97 = const_vec;
        dst108 = const_vec;
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt1, filt2, filt3,
                     dst97, dst97, dst97, dst97);
        FUNC0(vec4, vec5, vec6, vec7, filt0, filt1, filt2, filt3,
                     dst108, dst108, dst108, dst108);

        dst76_r = FUNC16(dst97, dst66);
        FUNC2(dst108, dst97, dst87_r, dst109_r);
        dst66 = (v8i16) FUNC18((v2i64) dst97, 1);
        dst98_r = FUNC16(dst66, dst108);

        dst0_r = FUNC1(dst10_r, dst32_r, dst54_r, dst76_r,
                                filt_h0, filt_h1, filt_h2, filt_h3);
        dst1_r = FUNC1(dst21_r, dst43_r, dst65_r, dst87_r,
                                filt_h0, filt_h1, filt_h2, filt_h3);
        dst2_r = FUNC1(dst32_r, dst54_r, dst76_r, dst98_r,
                                filt_h0, filt_h1, filt_h2, filt_h3);
        dst3_r = FUNC1(dst43_r, dst65_r, dst87_r, dst109_r,
                                filt_h0, filt_h1, filt_h2, filt_h3);
        FUNC10(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        FUNC7(dst1_r, dst0_r, dst3_r, dst2_r, dst0_r, dst2_r);
        FUNC11(dst0_r, dst2_r, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);

        dst10_r = dst54_r;
        dst32_r = dst76_r;
        dst54_r = dst98_r;
        dst21_r = dst65_r;
        dst43_r = dst87_r;
        dst65_r = dst109_r;
        dst66 = (v8i16) FUNC18((v2i64) dst108, 1);
    }
}