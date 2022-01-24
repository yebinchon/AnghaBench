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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC16(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t height,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    uint32_t loop_cnt;
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= 3;

    weight_vec = FUNC14(weight);
    rnd_vec = FUNC14(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC13(weight);
    offset_vec = FUNC13(offset);
    denom_vec = FUNC13(rnd_val);

    weight_vec_h = FUNC15(weight_vec_h, denom_vec);
    offset_vec = FUNC12(offset_vec, weight_vec_h);

    filter_vec = FUNC5(filter);
    FUNC7(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask0 = FUNC3(&ff_hevc_mask_arr[0]);
    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    for (loop_cnt = 16; loop_cnt--;) {
        FUNC4(src, 16, src0, src1);
        src += src_stride;
        FUNC4(src, 16, src2, src3);
        src += src_stride;
        FUNC11(src0, src1, src2, src3);
        FUNC10(src0, src0, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC10(src0, src1, mask4, mask5, mask6, mask7,
                   vec4, vec5, vec6, vec7);
        FUNC10(src1, src1, mask0, mask1, mask2, mask3,
                   vec8, vec9, vec10, vec11);
        FUNC10(src2, src2, mask0, mask1, mask2, mask3,
                   vec12, vec13, vec14, vec15);
        dst0 = FUNC0(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst1 = FUNC0(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);
        dst2 = FUNC0(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                                 filt3);
        dst3 = FUNC0(vec12, vec13, vec14, vec15, filt0, filt1,
                                 filt2, filt3);

        FUNC10(src2, src3, mask4, mask5, mask6, mask7,
                   vec0, vec1, vec2, vec3);
        FUNC10(src3, src3, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        dst4 = FUNC0(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                 filt3);
        dst5 = FUNC0(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                 filt3);

        FUNC2(dst0, dst1, dst2, dst3, weight_vec,
                                       offset_vec, rnd_vec, dst0, dst1, dst2,
                                       dst3);
        FUNC1(dst4, dst5, weight_vec, offset_vec,
                                       rnd_vec, dst4, dst5);

        FUNC6(dst1, dst0, dst4, dst3, dst5, dst2, out0, out1, out2);
        FUNC9(out0, out1, dst, dst_stride);
        FUNC8(out2, 0, 1, dst + 16, dst_stride);
        dst += (2 * dst_stride);
    }
}