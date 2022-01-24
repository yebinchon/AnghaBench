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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const uint8_t *src, int32_t src_stride,
                                     uint8_t *dst, int32_t dst_stride,
                                     const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16u8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, filt0;
    v16i8 out0, out1;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    /* rearranging filter_y */
    filt = FUNC2(filter);
    filt0 = (v16u8) FUNC9(filt, 0);

    src0 = FUNC3(src);
    src += src_stride;

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC4(src, src_stride, src1, src2, src3, src4, src5, src6, src7, src8);
        src += (8 * src_stride);

        FUNC1(src1, src0, src2, src1, src3, src2, src4, src3,
                   vec0, vec1, vec2, vec3);
        FUNC1(src5, src4, src6, src5, src7, src6, src8, src7,
                   vec4, vec5, vec6, vec7);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                    tmp0, tmp1, tmp2, tmp3);
        FUNC7(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC6(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC5(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC8(out0, out1, 0, 1, 0, 1, dst, dst_stride);

        FUNC0(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    tmp0, tmp1, tmp2, tmp3);
        FUNC7(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC6(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC5(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC8(out0, out1, 0, 1, 0, 1, dst + 4 * dst_stride, dst_stride);
        dst += (8 * dst_stride);

        src0 = src8;
    }
}