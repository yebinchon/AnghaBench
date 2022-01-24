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
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* mc_filt_mask_arr ; 
 int /*<<< orphan*/ ** vp9_bilinear_filters_msa ; 

void FUNC8(uint8_t *dst, ptrdiff_t dst_stride,
                          const uint8_t *src, ptrdiff_t src_stride,
                          int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = vp9_bilinear_filters_msa[mx - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt0, vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8u16 out0, out1, out2, out3, out4, out5, out6, out7, filt;

    mask = FUNC1(&mc_filt_mask_arr[0]);

    /* rearranging filter */
    filt = FUNC2(filter);
    filt0 = (v16u8) FUNC7((v8i16) filt, 0);

    for (loop_cnt = height; loop_cnt--;) {
        src0 = FUNC1(src);
        src2 = FUNC1(src + 16);
        src4 = FUNC1(src + 32);
        src6 = FUNC1(src + 48);
        src7 = FUNC1(src + 56);
        FUNC4(src2, src0, src4, src2, src6, src4, 8, src1, src3, src5);
        src += src_stride;

        FUNC6(src0, src0, src1, src1, mask, mask, vec0, vec1);
        FUNC6(src2, src2, src3, src3, mask, mask, vec2, vec3);
        FUNC6(src4, src4, src5, src5, mask, mask, vec4, vec5);
        FUNC6(src6, src6, src7, src7, mask, mask, vec6, vec7);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                    out0, out1, out2, out3);
        FUNC0(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    out4, out5, out6, out7);
        FUNC5(out0, out1, out2, out3, 7);
        FUNC5(out4, out5, out6, out7, 7);
        FUNC3(out0, out1, dst);
        FUNC3(out2, out3, dst + 16);
        FUNC3(out4, out5, dst + 32);
        FUNC3(out6, out7, dst + 48);
        dst += dst_stride;
    }
}