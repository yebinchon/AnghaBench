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
typedef  scalar_t__ v8u16 ;
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* mc_filt_mask_arr ; 
 int /*<<< orphan*/ ** vp9_bilinear_filters_msa ; 

void FUNC9(uint8_t *dst, ptrdiff_t dst_stride,
                          const uint8_t *src, ptrdiff_t src_stride,
                          int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = vp9_bilinear_filters_msa[mx - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt0, dst0, dst1, dst2, dst3;
    v16u8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8u16 res0, res1, res2, res3, res4, res5, res6, res7, filt;

    mask = FUNC1(&mc_filt_mask_arr[0]);

    /* rearranging filter */
    filt = FUNC3(filter);
    filt0 = (v16u8) FUNC8((v8i16) filt, 0);

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        src0 = FUNC1(src);
        src2 = FUNC1(src + 16);
        src3 = FUNC1(src + 24);
        src1 = FUNC7(src2, src0, 8);
        src += src_stride;
        src4 = FUNC1(src);
        src6 = FUNC1(src + 16);
        src7 = FUNC1(src + 24);
        src5 = FUNC7(src6, src4, 8);
        src += src_stride;

        FUNC6(src0, src0, src1, src1, mask, mask, vec0, vec1);
        FUNC6(src2, src2, src3, src3, mask, mask, vec2, vec3);
        FUNC6(src4, src4, src5, src5, mask, mask, vec4, vec5);
        FUNC6(src6, src6, src7, src7, mask, mask, vec6, vec7);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                    res0, res1, res2, res3);
        FUNC0(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    res4, res5, res6, res7);
        FUNC5(res0, res1, res2, res3, 7);
        FUNC5(res4, res5, res6, res7, 7);
        FUNC2(dst, 16, dst0, dst1);
        FUNC4(res1, res0, dst0, dst);
        FUNC4(res3, res2, dst1, (dst + 16));
        dst += dst_stride;
        FUNC2(dst, 16, dst2, dst3);
        FUNC4(res5, res4, dst2, dst);
        FUNC4(res7, res6, dst3, (dst + 16));
        dst += dst_stride;
    }
}