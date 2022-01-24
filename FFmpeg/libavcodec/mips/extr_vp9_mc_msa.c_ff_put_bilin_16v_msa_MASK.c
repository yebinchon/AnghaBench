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
typedef  int /*<<< orphan*/  v8u16 ;
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** vp9_bilinear_filters_msa ; 

void FUNC10(uint8_t *dst, ptrdiff_t dst_stride,
                          const uint8_t *src, ptrdiff_t src_stride,
                          int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = vp9_bilinear_filters_msa[my - 1];
    v16u8 src0, src1, src2, src3, src4;
    v16u8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    /* rearranging filter_y */
    filt = FUNC3(filter);
    filt0 = (v16u8) FUNC9(filt, 0);

    src0 = FUNC4(src);
    src += src_stride;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC5(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);

        FUNC2(src1, src0, src2, src1, vec0, vec2);
        FUNC1(src1, src0, src2, src1, vec1, vec3);
        FUNC0(vec0, vec1, filt0, filt0, tmp0, tmp1);
        FUNC8(tmp0, tmp1, 7);
        FUNC7(tmp0, tmp1, 7);
        FUNC6(tmp0, tmp1, dst);
        dst += dst_stride;

        FUNC2(src3, src2, src4, src3, vec4, vec6);
        FUNC1(src3, src2, src4, src3, vec5, vec7);
        FUNC0(vec2, vec3, filt0, filt0, tmp2, tmp3);
        FUNC8(tmp2, tmp3, 7);
        FUNC7(tmp2, tmp3, 7);
        FUNC6(tmp2, tmp3, dst);
        dst += dst_stride;

        FUNC0(vec4, vec5, filt0, filt0, tmp0, tmp1);
        FUNC8(tmp0, tmp1, 7);
        FUNC7(tmp0, tmp1, 7);
        FUNC6(tmp0, tmp1, dst);
        dst += dst_stride;

        FUNC0(vec6, vec7, filt0, filt0, tmp2, tmp3);
        FUNC8(tmp2, tmp3, 7);
        FUNC7(tmp2, tmp3, 7);
        FUNC6(tmp2, tmp3, dst);
        dst += dst_stride;

        src0 = src4;
    }
}