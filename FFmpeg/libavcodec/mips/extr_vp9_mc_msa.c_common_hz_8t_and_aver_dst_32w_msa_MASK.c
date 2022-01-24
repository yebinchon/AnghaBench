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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC14(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter,
                                              int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 dst1, dst2, mask0, mask1, mask2, mask3;
    v8i16 filt, out0, out1, out2, out3;
    v8i16 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;

    mask0 = FUNC5(&mc_filt_mask_arr[0]);
    src -= 3;

    /* rearranging filter */
    filt = FUNC4(filter);
    FUNC9(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (loop_cnt = height; loop_cnt--;) {
        src0 = FUNC3(src);
        src2 = FUNC3(src + 16);
        src3 = FUNC3(src + 24);
        src1 = FUNC13(src2, src0, 8);
        src += src_stride;

        FUNC12(src0, src1, src2, src3);
        FUNC11(src0, src0, mask0, mask1, mask2, mask3, vec0, vec4, vec8,
                   vec12);
        FUNC11(src1, src1, mask0, mask1, mask2, mask3, vec1, vec5, vec9,
                   vec13);
        FUNC11(src2, src2, mask0, mask1, mask2, mask3, vec2, vec6, vec10,
                   vec14);
        FUNC11(src3, src3, mask0, mask1, mask2, mask3, vec3, vec7, vec11,
                   vec15);
        FUNC1(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, vec0,
                    vec1, vec2, vec3);
        FUNC1(vec8, vec9, vec10, vec11, filt2, filt2, filt2, filt2, vec8,
                    vec9, vec10, vec11);
        FUNC2(vec4, vec5, vec6, vec7, filt1, filt1, filt1, filt1, vec0,
                     vec1, vec2, vec3);
        FUNC2(vec12, vec13, vec14, vec15, filt3, filt3, filt3, filt3,
                     vec8, vec9, vec10, vec11);
        FUNC0(vec0, vec8, vec1, vec9, vec2, vec10, vec3, vec11, out0,
                    out1, out2, out3);
        FUNC10(out0, out1, out2, out3, 7);
        FUNC8(out0, out1, out2, out3, 7);
        FUNC6(dst, 16, dst1, dst2);
        FUNC7(out1, out0, dst1, dst);
        FUNC7(out3, out2, dst2, dst + 16);
        dst += dst_stride;
    }
}