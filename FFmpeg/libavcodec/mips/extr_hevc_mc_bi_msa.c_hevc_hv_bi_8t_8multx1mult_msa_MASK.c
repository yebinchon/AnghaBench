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
typedef  int v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  const int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int,int,int,int,int,int) ; 
 int FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC14 (int) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int FUNC16 (int,int) ; 
 int FUNC17 (int,int) ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC19(uint8_t *src0_ptr,
                                          int32_t src_stride,
                                          int16_t *src1_ptr,
                                          int32_t src2_stride,
                                          uint8_t *dst,
                                          int32_t dst_stride,
                                          const int8_t *filter_x,
                                          const int8_t *filter_y,
                                          int32_t height, int32_t width)
{
    uint32_t loop_cnt;
    uint32_t cnt;
    uint8_t *src0_ptr_tmp;
    int16_t *src1_ptr_tmp;
    uint8_t *dst_tmp;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v8i16 in0, tmp;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filt_h0, filt_h1, filt_h2, filt_h3;
    v16i8 mask0 = FUNC5(ff_hevc_mask_arr);
    v16i8 mask1, mask2, mask3;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v4i32 dst0_r, dst0_l;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst76_l;

    src0_ptr -= ((3 * src_stride) + 3);
    const_vec = FUNC14(128);
    const_vec <<= 6;

    filter_vec = FUNC7(filter_x);
    FUNC8(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC7(filter_y);
    FUNC11(filter_vec, filter_vec);

    FUNC9(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (cnt = width >> 3; cnt--;) {
        src0_ptr_tmp = src0_ptr;
        dst_tmp = dst;
        src1_ptr_tmp = src1_ptr;

        FUNC6(src0_ptr_tmp, src_stride,
               src0, src1, src2, src3, src4, src5, src6);
        src0_ptr_tmp += (7 * src_stride);
        FUNC13(src0, src1, src2, src3, src4, src5, src6);

        /* row 0 row 1 row 2 row 3 */
        FUNC12(src0, src0, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC12(src1, src1, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC12(src2, src2, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        FUNC12(src3, src3, mask0, mask1, mask2, mask3,
                   vec12, vec13, vec14, vec15);
        dst0 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst1 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst2 = FUNC3(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);
        dst3 = FUNC3(vec12, vec13, vec14, vec15, filt0, filt1,
                                 filt2, filt3);

        FUNC12(src4, src4, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC12(src5, src5, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        FUNC12(src6, src6, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        dst4 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst5 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst6 = FUNC3(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);

        for (loop_cnt = height; loop_cnt--;) {
            src7 = FUNC5(src0_ptr_tmp);
            src7 = (v16i8) FUNC18((v16u8) src7, 128);
            src0_ptr_tmp += src_stride;

            in0 = FUNC7(src1_ptr_tmp);
            src1_ptr_tmp += src2_stride;

            FUNC12(src7, src7, mask0, mask1, mask2, mask3,
                       vec0, vec1, vec2, vec3);
            dst7 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1,
                                     filt2, filt3);
            FUNC4(dst1, dst0, dst10_r, dst10_l);
            FUNC4(dst3, dst2, dst32_r, dst32_l);
            FUNC4(dst5, dst4, dst54_r, dst54_l);
            FUNC4(dst7, dst6, dst76_r, dst76_l);
            dst0_r = FUNC2(dst10_r, dst32_r, dst54_r, dst76_r,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_l = FUNC2(dst10_l, dst32_l, dst54_l, dst76_l,
                                    filt_h0, filt_h1, filt_h2, filt_h3);
            dst0_r >>= 6;
            dst0_l >>= 6;

            tmp = FUNC16((v8i16) dst0_l, (v8i16) dst0_r);
            FUNC0(tmp, in0, tmp, const_vec, tmp, tmp);
            tmp = FUNC17(tmp, 7);
            FUNC1(tmp);
            out = (v16u8) FUNC15((v16i8) tmp, (v16i8) tmp);
            FUNC10(out, 0, dst_tmp);
            dst_tmp += dst_stride;

            dst0 = dst1;
            dst1 = dst2;
            dst2 = dst3;
            dst3 = dst4;
            dst4 = dst5;
            dst5 = dst6;
            dst6 = dst7;
        }

        src0_ptr += 8;
        dst += 8;
        src1_ptr += 8;
    }
}