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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC22(uint8_t *src,
                                           int32_t src_stride,
                                           uint8_t *dst,
                                           int32_t dst_stride,
                                           const int8_t *filter_x,
                                           const int8_t *filter_y,
                                           int32_t height, int32_t width)
{
    uint32_t loop_cnt, cnt;
    uint8_t *src_tmp;
    uint8_t *dst_tmp;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filt_h0, filt_h1, filt_h2, filt_h3;
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
    v16i8 mask0 = FUNC7(ff_hevc_mask_arr);

    src -= ((3 * src_stride) + 3);

    filter_vec = FUNC10(filter_x);
    FUNC14(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC10(filter_y);
    FUNC18(filter_vec, filter_vec);

    FUNC15(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (cnt = width >> 3; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC9(src_tmp, src_stride, src0, src1, src2, src3, src4, src5, src6);
        src_tmp += (7 * src_stride);
        FUNC21(src0, src1, src2, src3, src4, src5, src6);

        /* row 0 row 1 row 2 row 3 */
        FUNC19(src0, src0, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC19(src1, src1, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC19(src2, src2, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        FUNC19(src3, src3, mask0, mask1, mask2, mask3,
                   vec12, vec13, vec14, vec15);
        dst0 = FUNC1(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst1 = FUNC1(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst2 = FUNC1(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);
        dst3 = FUNC1(vec12, vec13, vec14, vec15, filt0, filt1,
                                 filt2, filt3);

        FUNC19(src4, src4, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC19(src5, src5, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC19(src6, src6, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        dst4 = FUNC1(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst5 = FUNC1(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst6 = FUNC1(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);

        for (loop_cnt = height >> 1; loop_cnt--;) {
            FUNC8(src_tmp, src_stride, src7, src8);
            FUNC20(src7, src8);
            src_tmp += 2 * src_stride;

            FUNC6(dst1, dst0, dst3, dst2, dst5, dst4, dst2, dst1,
                       dst10_r, dst32_r, dst54_r, dst21_r);
            FUNC3(dst1, dst0, dst3, dst2, dst5, dst4, dst2, dst1,
                       dst10_l, dst32_l, dst54_l, dst21_l);
            FUNC5(dst4, dst3, dst6, dst5, dst43_r, dst65_r);
            FUNC2(dst4, dst3, dst6, dst5, dst43_l, dst65_l);

            FUNC19(src7, src7, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst7 = FUNC1(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);

            FUNC4(dst7, dst6, dst76_r, dst76_l);
            dst0_r = FUNC0(dst10_r, dst32_r, dst54_r, dst76_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_l = FUNC0(dst10_l, dst32_l, dst54_l, dst76_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_r >>= 6;
            dst0_l >>= 6;

            FUNC19(src8, src8, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst8 = FUNC1(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);

            FUNC4(dst8, dst7, dst87_r, dst87_l);
            dst1_r = FUNC0(dst21_r, dst43_r, dst65_r, dst87_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst1_l = FUNC0(dst21_l, dst43_l, dst65_l, dst87_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst1_r >>= 6;
            dst1_l >>= 6;
            FUNC16(dst0_r, dst0_l, dst1_r, dst1_l, 6);
            FUNC13(dst0_r, dst0_l, dst1_r, dst1_l, 7);

            FUNC11(dst0_l, dst0_r, dst1_l, dst1_r, dst0, dst1);
            out = FUNC12(dst0, dst1);
            FUNC17(out, 0, 1, dst_tmp, dst_stride);
            dst_tmp += (2 * dst_stride);

            dst0 = dst2;
            dst1 = dst3;
            dst2 = dst4;
            dst3 = dst5;
            dst4 = dst6;
            dst5 = dst7;
            dst6 = dst8;
        }

        src += 8;
        dst += 8;
    }
}