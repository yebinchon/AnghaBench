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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 filt0, filt1, mask0, mask1;
    v16i8 vec0_m, vec1_m, vec2_m, vec3_m;
    v8i16 filt, out0, out1, out2, out3, out4, out5, out6, out7;
    v16u8 out;

    mask0 = FUNC2(&ff_hevc_mask_arr[0]);
    src -= 1;

    /* rearranging filter */
    filt = FUNC4(filter);
    FUNC7(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src0, src2, src4, src6);
        FUNC3(src + 8, src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);

        FUNC11(src0, src1, src2, src3, src4, src5, src6, src7);

        FUNC10(src0, src0, src1, src1, mask0, mask0, vec0_m, vec1_m);
        FUNC10(src2, src2, src3, src3, mask0, mask0, vec2_m, vec3_m);
        FUNC0(vec0_m, vec1_m, vec2_m, vec3_m, filt0, filt0, filt0, filt0,
                    out0, out1, out2, out3);
        FUNC10(src0, src0, src1, src1, mask1, mask1, vec0_m, vec1_m);
        FUNC10(src2, src2, src3, src3, mask1, mask1, vec2_m, vec3_m);
        FUNC1(vec0_m, vec1_m, vec2_m, vec3_m, filt1, filt1, filt1, filt1,
                     out0, out1, out2, out3);
        FUNC8(out0, out1, out2, out3, 6);
        FUNC6(out0, out1, out2, out3, 7);
        out = FUNC5(out0, out1);
        FUNC9(out, dst);
        dst += dst_stride;
        out = FUNC5(out2, out3);
        FUNC9(out, dst);
        dst += dst_stride;

        FUNC10(src4, src4, src5, src5, mask0, mask0, vec0_m, vec1_m);
        FUNC10(src6, src6, src7, src7, mask0, mask0, vec2_m, vec3_m);
        FUNC0(vec0_m, vec1_m, vec2_m, vec3_m, filt0, filt0, filt0, filt0,
                    out4, out5, out6, out7);
        FUNC10(src4, src4, src5, src5, mask1, mask1, vec0_m, vec1_m);
        FUNC10(src6, src6, src7, src7, mask1, mask1, vec2_m, vec3_m);
        FUNC1(vec0_m, vec1_m, vec2_m, vec3_m, filt1, filt1, filt1, filt1,
                     out4, out5, out6, out7);
        FUNC8(out4, out5, out6, out7, 6);
        FUNC6(out4, out5, out6, out7, 7);
        out = FUNC5(out4, out5);
        FUNC9(out, dst);
        dst += dst_stride;
        out = FUNC5(out6, out7);
        FUNC9(out, dst);
        dst += dst_stride;
    }
}