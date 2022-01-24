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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC17(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16u8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask00;
    v16u8 tmp0, tmp1, tmp2;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 filt0, filt1, filt2, filt3;
    v8i16 filt, out0, out1, out2, out3, out4, out5;

    mask00 = FUNC6(&ff_hevc_mask_arr[0]);
    mask0 = FUNC6(&ff_hevc_mask_arr[16]);

    src = src - 3;

    /* rearranging filter */
    filt = FUNC5(filter);
    FUNC10(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask00 + 2;
    mask2 = mask00 + 4;
    mask3 = mask00 + 6;
    mask4 = mask0 + 2;
    mask5 = mask0 + 4;
    mask6 = mask0 + 6;

    for (loop_cnt = 4; loop_cnt--;) {
        /* 8 width */
        FUNC4(src, src_stride, src0, src1, src2, src3);
        /* 4 width */
        FUNC4(src + 8, src_stride, src4, src5, src6, src7);

        FUNC16(src0, src1, src2, src3);
        FUNC16(src4, src5, src6, src7);
        src += (4 * src_stride);

        FUNC15(src0, src0, src1, src1, mask00, mask00, vec0, vec1);
        FUNC15(src2, src2, src3, src3, mask00, mask00, vec2, vec3);
        FUNC1(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, out0,
                    out1, out2, out3);
        FUNC15(src0, src0, src1, src1, mask2, mask2, vec0, vec1);
        FUNC15(src2, src2, src3, src3, mask2, mask2, vec2, vec3);
        FUNC3(vec0, vec1, vec2, vec3, filt2, filt2, filt2, filt2, out0,
                     out1, out2, out3);
        FUNC15(src0, src0, src1, src1, mask1, mask1, vec4, vec5);
        FUNC15(src2, src2, src3, src3, mask1, mask1, vec6, vec7);
        FUNC3(vec4, vec5, vec6, vec7, filt1, filt1, filt1, filt1, out0,
                     out1, out2, out3);
        FUNC15(src0, src0, src1, src1, mask3, mask3, vec4, vec5);
        FUNC15(src2, src2, src3, src3, mask3, mask3, vec6, vec7);
        FUNC3(vec4, vec5, vec6, vec7, filt3, filt3, filt3, filt3, out0,
                     out1, out2, out3);

        /* 4 width */
        FUNC15(src4, src5, src6, src7, mask0, mask0, vec0, vec1);
        FUNC0(vec0, vec1, filt0, filt0, out4, out5);
        FUNC15(src4, src5, src6, src7, mask4, mask4, vec2, vec3);
        FUNC2(vec2, vec3, filt1, filt1, out4, out5);
        FUNC15(src4, src5, src6, src7, mask5, mask5, vec4, vec5);
        FUNC2(vec4, vec5, filt2, filt2, out4, out5);
        FUNC15(src4, src5, src6, src7, mask6, mask6, vec6, vec7);
        FUNC2(vec6, vec7, filt3, filt3, out4, out5);

        FUNC12(out0, out1, out2, out3, 6);
        FUNC11(out4, out5, 6);
        FUNC9(out0, out1, out2, out3, 7);
        FUNC8(out4, out5, 7);
        tmp0 = FUNC7(out0, out1);
        tmp1 = FUNC7(out2, out3);
        tmp2 = FUNC7(out4, out5);

        FUNC13(tmp0, tmp1, 0, 1, 0, 1, dst, dst_stride);
        FUNC14(tmp2, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);
    }
}