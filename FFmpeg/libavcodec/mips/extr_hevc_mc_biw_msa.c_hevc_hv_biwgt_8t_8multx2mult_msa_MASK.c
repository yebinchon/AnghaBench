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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC22 (int,scalar_t__,scalar_t__) ; 
 int FUNC23 (int) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC25(uint8_t *src0_ptr,
                                             int32_t src_stride,
                                             int16_t *src1_ptr,
                                             int32_t src2_stride,
                                             uint8_t *dst,
                                             int32_t dst_stride,
                                             const int8_t *filter_x,
                                             const int8_t *filter_y,
                                             int32_t height,
                                             int32_t weight0,
                                             int32_t weight1,
                                             int32_t offset0,
                                             int32_t offset1,
                                             int32_t rnd_val,
                                             int32_t width8mult)
{
    uint32_t loop_cnt, cnt;
    int32_t offset, weight;
    uint8_t *src0_ptr_tmp;
    int16_t *src1_ptr_tmp;
    uint8_t *dst_tmp;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 in0, in1;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filt_h0, filt_h1, filt_h2, filt_h3;
    v16i8 mask0 = FUNC8(ff_hevc_mask_arr);
    v16i8 mask1, mask2, mask3;
    v8i16 filter_vec, weight_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l;
    v8i16 tmp0, tmp1, tmp2, tmp3;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst76_l;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r;
    v8i16 dst21_l, dst43_l, dst65_l, dst87_l;
    v4i32 offset_vec, rnd_vec, const_vec;

    src0_ptr -= ((3 * src_stride) + 3);

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    const_vec = FUNC23((128 * weight1));
    const_vec <<= 6;
    offset_vec = FUNC23(offset);
    rnd_vec = FUNC23(rnd_val + 1);
    offset_vec += const_vec;
    weight_vec = (v8i16) FUNC23(weight);

    filter_vec = FUNC11(filter_x);
    FUNC14(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC11(filter_y);
    FUNC18(filter_vec, filter_vec);

    FUNC15(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (cnt = width8mult; cnt--;) {
        src0_ptr_tmp = src0_ptr;
        src1_ptr_tmp = src1_ptr;
        dst_tmp = dst;

        FUNC10(src0_ptr_tmp, src_stride,
               src0, src1, src2, src3, src4, src5, src6);
        src0_ptr_tmp += (7 * src_stride);

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

        dst0 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst1 = FUNC2(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst2 = FUNC2(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);
        dst3 = FUNC2(vec12, vec13, vec14, vec15, filt0, filt1,
                                 filt2, filt3);

        /* row 4 row 5 row 6 */
        FUNC19(src4, src4, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC19(src5, src5, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC19(src6, src6, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);

        dst4 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst5 = FUNC2(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst6 = FUNC2(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);

        for (loop_cnt = height >> 1; loop_cnt--;) {
            FUNC9(src0_ptr_tmp, src_stride, src7, src8);
            FUNC20(src7, src8);
            src0_ptr_tmp += 2 * src_stride;

            FUNC12(src1_ptr_tmp, src2_stride, in0, in1);
            src1_ptr_tmp += (2 * src2_stride);

            FUNC7(dst1, dst0, dst3, dst2, dst5, dst4, dst2, dst1, dst10_r,
                       dst32_r, dst54_r, dst21_r);
            FUNC4(dst1, dst0, dst3, dst2, dst5, dst4, dst2, dst1, dst10_l,
                       dst32_l, dst54_l, dst21_l);
            FUNC6(dst4, dst3, dst6, dst5, dst43_r, dst65_r);
            FUNC3(dst4, dst3, dst6, dst5, dst43_l, dst65_l);

            FUNC19(src7, src7, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst7 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);

            FUNC5(dst7, dst6, dst76_r, dst76_l);
            dst0_r = FUNC1(dst10_r, dst32_r, dst54_r, dst76_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_l = FUNC1(dst10_l, dst32_l, dst54_l, dst76_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);

            dst0_r >>= 6;
            dst0_l >>= 6;

            /* row 8 */
            FUNC19(src8, src8, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst8 = FUNC2(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);

            FUNC5(dst8, dst7, dst87_r, dst87_l);
            dst1_r = FUNC1(dst21_r, dst43_r, dst65_r, dst87_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst1_l = FUNC1(dst21_l, dst43_l, dst65_l, dst87_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);

            dst1_r >>= 6;
            dst1_l >>= 6;

            FUNC13(dst0_l, dst0_r, dst1_l, dst1_r, tmp1, tmp3);
            FUNC5(tmp1, in0, tmp0, tmp1);
            FUNC5(tmp3, in1, tmp2, tmp3);
            dst0_r = FUNC22(offset_vec, tmp0, weight_vec);
            dst0_l = FUNC22(offset_vec, tmp1, weight_vec);
            dst1_r = FUNC22(offset_vec, tmp2, weight_vec);
            dst1_l = FUNC22(offset_vec, tmp3, weight_vec);
            FUNC16(dst0_l, dst0_r, dst1_l, dst1_r, rnd_vec);
            FUNC0(dst0_l, dst0_r, dst1_l, dst1_r);
            FUNC13(dst0_l, dst0_r, dst1_l, dst1_r, tmp0, tmp1);
            out = (v16u8) FUNC24((v16i8) tmp1, (v16i8) tmp0);
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

        src0_ptr += 8;
        src1_ptr += 8;
        dst += 8;
    }
}