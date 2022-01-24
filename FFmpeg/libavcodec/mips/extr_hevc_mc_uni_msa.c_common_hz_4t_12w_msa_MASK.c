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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC17(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, mask0, mask1, mask2, mask3;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9;
    v16i8 vec10, vec11;
    v16u8 tmp0, tmp1;
    v8i16 filt, out0, out1, out2, out3, out4, out5;

    mask0 = FUNC4(&ff_hevc_mask_arr[0]);
    mask2 = FUNC4(&ff_hevc_mask_arr[32]);

    src -= 1;

    /* rearranging filter */
    filt = FUNC6(filter);
    FUNC10(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;
    mask3 = mask2 + 2;

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC5(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);

        FUNC16(src0, src1, src2, src3);
        FUNC15(src0, src1, src2, src3, mask2, mask2, vec0, vec1);
        FUNC0(vec0, vec1, filt0, filt0, out0, out1);
        FUNC15(src0, src1, src2, src3, mask3, mask3, vec2, vec3);
        FUNC2(vec2, vec3, filt1, filt1, out0, out1);
        FUNC11(out0, out1, 6);
        FUNC8(out0, out1, 7);
        tmp0 = FUNC7(out0, out1);
        FUNC14(tmp0, 0, 1, 2, 3, dst + 8, dst_stride);

        FUNC15(src0, src0, src1, src1, mask0, mask0, vec4, vec5);
        FUNC15(src2, src2, src3, src3, mask0, mask0, vec6, vec7);
        FUNC1(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    out2, out3, out4, out5);
        FUNC15(src0, src0, src1, src1, mask1, mask1, vec8, vec9);
        FUNC15(src2, src2, src3, src3, mask1, mask1, vec10, vec11);
        FUNC3(vec8, vec9, vec10, vec11, filt1, filt1, filt1, filt1,
                     out2, out3, out4, out5);
        FUNC12(out2, out3, out4, out5, 6);
        FUNC9(out2, out3, out4, out5, 7);
        tmp0 = FUNC7(out2, out3);
        tmp1 = FUNC7(out4, out5);
        FUNC13(tmp0, tmp1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}