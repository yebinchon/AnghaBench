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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC17(uint8_t *src,
                                       int32_t src_stride,
                                       int16_t *dst,
                                       int32_t dst_stride,
                                       const int8_t *filter_x,
                                       const int8_t *filter_y,
                                       int32_t height,
                                       int32_t width8mult)
{
    uint32_t loop_cnt, cnt;
    uint8_t *src_tmp;
    int16_t *dst_tmp;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v8i16 dst10_r, dst32_r, dst54_r, dst21_r, dst43_r, dst65_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst21_l, dst43_l, dst65_l;

    src -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC12(filter_vec, filter_vec);

    FUNC9(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC16(128);
    const_vec <<= 6;

    for (cnt = width8mult; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC4(src_tmp, src_stride, src0, src1, src2);
        src_tmp += (3 * src_stride);

        FUNC14(src0, src1, src2);

        FUNC13(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        FUNC13(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
        FUNC13(src2, src2, src2, src2, mask0, mask1, vec4, vec5);

        dst0 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);
        dst1 = const_vec;
        FUNC0(vec2, vec3, filt0, filt1, dst1, dst1);
        dst2 = const_vec;
        FUNC0(vec4, vec5, filt0, filt1, dst2, dst2);

        FUNC2(dst1, dst0, dst10_r, dst10_l);
        FUNC2(dst2, dst1, dst21_r, dst21_l);

        for (loop_cnt = height >> 2; loop_cnt--;) {
            FUNC5(src_tmp, src_stride, src3, src4, src5, src6);
            src_tmp += (4 * src_stride);
            FUNC15(src3, src4, src5, src6);

            FUNC13(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
            FUNC13(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
            FUNC13(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
            FUNC13(src6, src6, src6, src6, mask0, mask1, vec6, vec7);

            dst3 = const_vec;
            dst4 = const_vec;
            dst5 = const_vec;
            dst6 = const_vec;
            FUNC0(vec0, vec1, filt0, filt1, dst3, dst3);
            FUNC0(vec2, vec3, filt0, filt1, dst4, dst4);
            FUNC0(vec4, vec5, filt0, filt1, dst5, dst5);
            FUNC0(vec6, vec7, filt0, filt1, dst6, dst6);

            FUNC2(dst3, dst2, dst32_r, dst32_l);
            FUNC2(dst4, dst3, dst43_r, dst43_l);
            FUNC2(dst5, dst4, dst54_r, dst54_l);
            FUNC2(dst6, dst5, dst65_r, dst65_l);

            dst0_r = FUNC1(dst10_r, dst32_r, filt_h0, filt_h1);
            dst0_l = FUNC1(dst10_l, dst32_l, filt_h0, filt_h1);
            dst1_r = FUNC1(dst21_r, dst43_r, filt_h0, filt_h1);
            dst1_l = FUNC1(dst21_l, dst43_l, filt_h0, filt_h1);
            dst2_r = FUNC1(dst32_r, dst54_r, filt_h0, filt_h1);
            dst2_l = FUNC1(dst32_l, dst54_l, filt_h0, filt_h1);
            dst3_r = FUNC1(dst43_r, dst65_r, filt_h0, filt_h1);
            dst3_l = FUNC1(dst43_l, dst65_l, filt_h0, filt_h1);

            FUNC10(dst0_r, dst0_l, dst1_r, dst1_l, 6);
            FUNC10(dst2_r, dst2_l, dst3_r, dst3_l, 6);

            FUNC7(dst0_l, dst0_r, dst1_l, dst1_r,
                        dst2_l, dst2_r, dst3_l, dst3_r,
                        dst0_r, dst1_r, dst2_r, dst3_r);

            FUNC11(dst0_r, dst1_r, dst2_r, dst3_r, dst_tmp, dst_stride);
            dst_tmp += (4 * dst_stride);

            dst10_r = dst54_r;
            dst10_l = dst54_l;
            dst21_r = dst65_r;
            dst21_l = dst65_l;
            dst2 = dst6;
        }

        src += 8;
        dst += 8;
    }
}