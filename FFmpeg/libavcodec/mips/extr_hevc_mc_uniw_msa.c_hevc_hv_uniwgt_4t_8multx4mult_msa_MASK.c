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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC24(uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst,
                                              int32_t dst_stride,
                                              const int8_t *filter_x,
                                              const int8_t *filter_y,
                                              int32_t height,
                                              int32_t weight,
                                              int32_t offset,
                                              int32_t rnd_val,
                                              int32_t width8mult)
{
    uint32_t loop_cnt, cnt;
    uint8_t *src_tmp;
    uint8_t *dst_tmp;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1, filter_vec;
    v16i8 mask0 = FUNC5(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, tmp0, tmp1, tmp2, tmp3;
    v8i16 dst10_r, dst32_r, dst54_r, dst21_r, dst43_r, dst65_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst21_l, dst43_l, dst65_l;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 offset_vec, const_128, denom_vec;
    v4i32 dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = FUNC8(filter_x);
    FUNC12(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC8(filter_y);
    FUNC17(filter_vec, filter_vec);

    FUNC13(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    weight_vec = FUNC22(weight);
    rnd_vec = FUNC22(rnd_val);

    offset_vec = FUNC21(offset);
    denom_vec = FUNC21(rnd_val - 6);
    const_128 = FUNC21((128 * weight));
    offset_vec += FUNC23(const_128, denom_vec);

    for (cnt = width8mult; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC6(src_tmp, src_stride, src0, src1, src2);
        src_tmp += (3 * src_stride);
        FUNC19(src0, src1, src2);

        FUNC18(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        FUNC18(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
        FUNC18(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
        dst0 = FUNC3(vec0, vec1, filt0, filt1);
        dst1 = FUNC3(vec2, vec3, filt0, filt1);
        dst2 = FUNC3(vec4, vec5, filt0, filt1);

        FUNC4(dst1, dst0, dst10_r, dst10_l);
        FUNC4(dst2, dst1, dst21_r, dst21_l);

        for (loop_cnt = height >> 2; loop_cnt--;) {
            FUNC7(src_tmp, src_stride, src3, src4, src5, src6);
            src_tmp += (4 * src_stride);
            FUNC20(src3, src4, src5, src6);

            FUNC18(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
            FUNC18(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
            FUNC18(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
            FUNC18(src6, src6, src6, src6, mask0, mask1, vec6, vec7);
            dst3 = FUNC3(vec0, vec1, filt0, filt1);
            dst4 = FUNC3(vec2, vec3, filt0, filt1);
            dst5 = FUNC3(vec4, vec5, filt0, filt1);
            dst6 = FUNC3(vec6, vec7, filt0, filt1);
            FUNC4(dst3, dst2, dst32_r, dst32_l);
            FUNC4(dst4, dst3, dst43_r, dst43_l);
            FUNC4(dst5, dst4, dst54_r, dst54_l);
            FUNC4(dst6, dst5, dst65_r, dst65_l);
            dst0_r = FUNC2(dst10_r, dst32_r, filt_h0, filt_h1);
            dst0_l = FUNC2(dst10_l, dst32_l, filt_h0, filt_h1);
            dst1_r = FUNC2(dst21_r, dst43_r, filt_h0, filt_h1);
            dst1_l = FUNC2(dst21_l, dst43_l, filt_h0, filt_h1);
            dst2_r = FUNC2(dst32_r, dst54_r, filt_h0, filt_h1);
            dst2_l = FUNC2(dst32_l, dst54_l, filt_h0, filt_h1);
            dst3_r = FUNC2(dst43_r, dst65_r, filt_h0, filt_h1);
            dst3_l = FUNC2(dst43_l, dst65_l, filt_h0, filt_h1);
            FUNC15(dst0_r, dst0_l, dst1_r, dst1_l, 6);
            FUNC15(dst2_r, dst2_l, dst3_r, dst3_l, 6);
            FUNC9(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
            FUNC9(dst2_r, weight_vec, dst3_r, weight_vec, dst2_r, dst3_r);
            FUNC9(dst0_l, weight_vec, dst1_l, weight_vec, dst0_l, dst1_l);
            FUNC9(dst2_l, weight_vec, dst3_l, weight_vec, dst2_l, dst3_l);
            FUNC14(dst0_r, dst0_l, dst1_r, dst1_l, rnd_vec);
            FUNC14(dst2_r, dst2_l, dst3_r, dst3_l, rnd_vec);
            FUNC11(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l,
                        dst3_r, tmp0, tmp1, tmp2, tmp3);
            FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
            FUNC0(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
            FUNC1(tmp0, tmp1, tmp2, tmp3);
            FUNC10(tmp1, tmp0, tmp3, tmp2, out0, out1);
            FUNC16(out0, out1, 0, 1, 0, 1, dst_tmp, dst_stride);
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