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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 mask0, mask1, mask2, mask3, tmp0, tmp1;
    v16i8 vec0_m, vec1_m, vec2_m, vec3_m, vec4_m, vec5_m, vec6_m, vec7_m;
    v8i16 filt, out0, out1, out2, out3;

    mask0 = FUNC4(&ff_hevc_mask_arr[0]);
    src -= 3;

    /* rearranging filter */
    filt = FUNC3(filter);
    FUNC7(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC2(src, src_stride, src0, src1, src2, src3);
        FUNC11(src0, src1, src2, src3);
        src += (4 * src_stride);

        FUNC10(src0, src0, src1, src1, mask0, mask0, vec0_m, vec1_m);
        FUNC10(src2, src2, src3, src3, mask0, mask0, vec2_m, vec3_m);
        FUNC0(vec0_m, vec1_m, vec2_m, vec3_m, filt0, filt0, filt0, filt0,
                    out0, out1, out2, out3);
        FUNC10(src0, src0, src1, src1, mask2, mask2, vec0_m, vec1_m);
        FUNC10(src2, src2, src3, src3, mask2, mask2, vec2_m, vec3_m);
        FUNC1(vec0_m, vec1_m, vec2_m, vec3_m, filt2, filt2, filt2, filt2,
                     out0, out1, out2, out3);
        FUNC10(src0, src0, src1, src1, mask1, mask1, vec4_m, vec5_m);
        FUNC10(src2, src2, src3, src3, mask1, mask1, vec6_m, vec7_m);
        FUNC1(vec4_m, vec5_m, vec6_m, vec7_m, filt1, filt1, filt1, filt1,
                     out0, out1, out2, out3);
        FUNC10(src0, src0, src1, src1, mask3, mask3, vec4_m, vec5_m);
        FUNC10(src2, src2, src3, src3, mask3, mask3, vec6_m, vec7_m);
        FUNC1(vec4_m, vec5_m, vec6_m, vec7_m, filt3, filt3, filt3, filt3,
                     out0, out1, out2, out3);

        FUNC8(out0, out1, out2, out3, 6);
        FUNC6(out0, out1, out2, out3, 7);
        tmp0 = FUNC5(out0, out1);
        tmp1 = FUNC5(out2, out3);
        FUNC9(tmp0, tmp1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}