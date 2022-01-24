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
typedef  int v4i32 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC26 (int,int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC27(uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst,
                                              int32_t dst_stride,
                                              const int8_t *filter_x,
                                              const int8_t *filter_y,
                                              int32_t height,
                                              int32_t weight,
                                              int32_t offset,
                                              int32_t rnd_val,
                                              int32_t width)
{
    uint32_t loop_cnt, cnt;
    uint8_t *src_tmp;
    uint8_t *dst_tmp;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 filt0, filt1, filt2, filt3;
    v4i32 filt_h0, filt_h1, filt_h2, filt_h3;
    v16i8 mask1, mask2, mask3;
    v8i16 filter_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst76_l;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r;
    v8i16 dst21_l, dst43_l, dst65_l, dst87_l;
    v4i32 weight_vec, offset_vec, rnd_vec, const_128, denom_vec;
    v16i8 mask0 = FUNC9(ff_hevc_mask_arr);

    src -= ((3 * src_stride) + 3);

    weight_vec = FUNC23(weight);
    offset_vec = FUNC23(offset);
    rnd_vec = FUNC23(rnd_val);
    denom_vec = rnd_vec - 6;

    const_128 = FUNC24(128);
    const_128 *= weight_vec;
    offset_vec += FUNC26(const_128, denom_vec);

    filter_vec = FUNC12(filter_x);
    FUNC15(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC12(filter_y);
    FUNC19(filter_vec, filter_vec);
    FUNC16(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (cnt = width >> 3; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC11(src_tmp, src_stride, src0, src1, src2, src3, src4, src5, src6);
        src_tmp += (7 * src_stride);
        FUNC22(src0, src1, src2, src3, src4, src5, src6);

        FUNC20(src0, src0, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC20(src1, src1, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC20(src2, src2, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        FUNC20(src3, src3, mask0, mask1, mask2, mask3,
                   vec12, vec13, vec14, vec15);
        dst0 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst1 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst2 = FUNC3(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);
        dst3 = FUNC3(vec12, vec13, vec14, vec15, filt0, filt1,
                                 filt2, filt3);

        FUNC20(src4, src4, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC20(src5, src5, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC20(src6, src6, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        dst4 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst5 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst6 = FUNC3(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);

        FUNC8(dst1, dst0, dst3, dst2, dst5, dst4, dst2, dst1,
                   dst10_r, dst32_r, dst54_r, dst21_r);
        FUNC7(dst4, dst3, dst6, dst5, dst43_r, dst65_r);
        FUNC5(dst1, dst0, dst3, dst2, dst5, dst4, dst2, dst1,
                   dst10_l, dst32_l, dst54_l, dst21_l);
        FUNC4(dst4, dst3, dst6, dst5, dst43_l, dst65_l);

        for (loop_cnt = height >> 1; loop_cnt--;) {
            FUNC10(src_tmp, src_stride, src7, src8);
            src_tmp += 2 * src_stride;
            FUNC21(src7, src8);

            FUNC20(src7, src7, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst7 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);

            FUNC6(dst7, dst6, dst76_r, dst76_l);
            dst0_r = FUNC2(dst10_r, dst32_r, dst54_r, dst76_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_l = FUNC2(dst10_l, dst32_l, dst54_l, dst76_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_r >>= 6;
            dst0_l >>= 6;

            /* row 8 */
            FUNC20(src8, src8, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst8 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);

            FUNC6(dst8, dst7, dst87_r, dst87_l);
            dst1_r = FUNC2(dst21_r, dst43_r, dst65_r, dst87_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst1_l = FUNC2(dst21_l, dst43_l, dst65_l, dst87_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst1_r >>= 6;
            dst1_l >>= 6;

            FUNC13(dst0_r, weight_vec, dst0_l, weight_vec, dst0_r, dst0_l);
            FUNC13(dst1_r, weight_vec, dst1_l, weight_vec, dst1_r, dst1_l);
            FUNC17(dst0_r, dst1_r, dst0_l, dst1_l, rnd_vec);
            FUNC0(dst0_r, offset_vec, dst0_l, offset_vec, dst0_r, dst0_l);
            FUNC0(dst1_r, offset_vec, dst1_l, offset_vec, dst1_r, dst1_l);
            FUNC1(dst0_r, dst1_r, dst0_l, dst1_l);

            FUNC14(dst0_l, dst0_r, dst1_l, dst1_r, dst0_r, dst1_r);
            dst0_r = (v4i32) FUNC25((v16i8) dst1_r, (v16i8) dst0_r);
            FUNC18(dst0_r, 0, 1, dst_tmp, dst_stride);
            dst_tmp += (2 * dst_stride);

            dst10_r = dst32_r;
            dst32_r = dst54_r;
            dst54_r = dst76_r;
            dst10_l = dst32_l;
            dst32_l = dst54_l;
            dst54_l = dst76_l;
            dst21_r = dst43_r;
            dst43_r = dst65_r;
            dst65_r = dst87_r;
            dst21_l = dst43_l;
            dst43_l = dst65_l;
            dst65_l = dst87_l;
            dst6 = dst8;
        }

        src += 8;
        dst += 8;
    }
}