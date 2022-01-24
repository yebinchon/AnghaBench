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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    int32_t loop_cnt;
    v16u8 mask0, mask1, mask2, mask3, out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 filt0, filt1, filt2, filt3;
    v8i16 res0, res1, res2, res3, filt;

    mask0 = FUNC4(&ff_hevc_mask_arr[0]);
    src -= 3;

    /* rearranging filter */
    filt = FUNC3(filter);
    FUNC7(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (loop_cnt = height; loop_cnt--;) {
        FUNC2(src, 8, src0, src1, src2, src3, src4, src5, src6, src7);
        src += src_stride;

        FUNC11(src0, src1, src2, src3, src4, src5, src6, src7);

        FUNC10(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
        FUNC10(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, res0,
                    res1, res2, res3);
        FUNC10(src0, src0, src1, src1, mask2, mask2, vec0, vec1);
        FUNC10(src2, src2, src3, src3, mask2, mask2, vec2, vec3);
        FUNC1(vec0, vec1, vec2, vec3, filt2, filt2, filt2, filt2, res0,
                     res1, res2, res3);
        FUNC10(src0, src0, src1, src1, mask1, mask1, vec4, vec5);
        FUNC10(src2, src2, src3, src3, mask1, mask1, vec6, vec7);
        FUNC1(vec4, vec5, vec6, vec7, filt1, filt1, filt1, filt1, res0,
                     res1, res2, res3);
        FUNC10(src0, src0, src1, src1, mask3, mask3, vec4, vec5);
        FUNC10(src2, src2, src3, src3, mask3, mask3, vec6, vec7);
        FUNC1(vec4, vec5, vec6, vec7, filt3, filt3, filt3, filt3, res0,
                     res1, res2, res3);

        FUNC8(res0, res1, res2, res3, 6);
        FUNC6(res0, res1, res2, res3, 7);
        out = FUNC5(res0, res1);
        FUNC9(out, dst);
        out = FUNC5(res2, res3);
        FUNC9(out, dst + 16);

        FUNC10(src4, src4, src5, src5, mask0, mask0, vec0, vec1);
        FUNC10(src6, src6, src7, src7, mask0, mask0, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, res0,
                    res1, res2, res3);
        FUNC10(src4, src4, src5, src5, mask2, mask2, vec0, vec1);
        FUNC10(src6, src6, src7, src7, mask2, mask2, vec2, vec3);
        FUNC1(vec0, vec1, vec2, vec3, filt2, filt2, filt2, filt2, res0,
                     res1, res2, res3);
        FUNC10(src4, src4, src5, src5, mask1, mask1, vec4, vec5);
        FUNC10(src6, src6, src7, src7, mask1, mask1, vec6, vec7);
        FUNC1(vec4, vec5, vec6, vec7, filt1, filt1, filt1, filt1, res0,
                     res1, res2, res3);
        FUNC10(src4, src4, src5, src5, mask3, mask3, vec4, vec5);
        FUNC10(src6, src6, src7, src7, mask3, mask3, vec6, vec7);
        FUNC1(vec4, vec5, vec6, vec7, filt3, filt3, filt3, filt3, res0,
                     res1, res2, res3);

        FUNC8(res0, res1, res2, res3, 6);
        FUNC6(res0, res1, res2, res3, 7);
        out = FUNC5(res0, res1);
        FUNC9(out, dst + 32);
        out = FUNC5(res2, res3);
        FUNC9(out, dst + 48);
        dst += dst_stride;
    }
}