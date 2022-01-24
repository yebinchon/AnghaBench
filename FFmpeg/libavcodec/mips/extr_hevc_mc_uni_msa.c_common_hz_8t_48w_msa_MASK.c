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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC15(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3, vec0, vec1, vec2;
    v16i8 src4;
    v16u8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7, out;
    v8i16 filt, out0, out1, out2, out3;

    mask0 = FUNC4(&ff_hevc_mask_arr[0]);
    src -= 3;

    /* rearranging filter */
    filt = FUNC3(filter);
    FUNC7(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    for (loop_cnt = 64; loop_cnt--;) {
        src0 = FUNC2(src);
        src1 = FUNC2(src + 8);
        src2 = FUNC2(src + 16);
        src3 = FUNC2(src + 32);
        src4 = FUNC2(src + 40);
        src += src_stride;

        FUNC11(src0, src1, src2, src3);
        src4 = (v16i8) FUNC14((v16u8) src4, 128);

        FUNC10(src0, src0, src1, src1, src2, src2, mask0, mask0, mask0,
                   vec0, vec1, vec2);
        FUNC0(vec0, vec1, vec2, filt0, filt0, filt0, out0, out1, out2);
        FUNC10(src0, src0, src1, src1, src2, src2, mask1, mask1, mask1,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt1, filt1, out0, out1);
        out2 = FUNC12(out2, vec2, filt1);
        FUNC10(src0, src0, src1, src1, src2, src2, mask2, mask2, mask2,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt2, filt2, out0, out1);
        out2 = FUNC12(out2, vec2, filt2);

        FUNC10(src0, src0, src1, src1, src2, src2, mask3, mask3, mask3,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt3, filt3, out0, out1);
        out2 = FUNC12(out2, vec2, filt3);

        FUNC8(out0, out1, 6);
        out3 = FUNC13(out2, 6);
        FUNC6(out0, out1, out3, 7);
        out = FUNC5(out0, out1);
        FUNC9(out, dst);

        FUNC10(src2, src3, src3, src3, src4, src4, mask4, mask0, mask0,
                   vec0, vec1, vec2);
        FUNC0(vec0, vec1, vec2, filt0, filt0, filt0, out0, out1, out2);
        FUNC10(src2, src3, src3, src3, src4, src4, mask5, mask1, mask1,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt1, filt1, out0, out1);
        out2 = FUNC12(out2, vec2, filt1);
        FUNC10(src2, src3, src3, src3, src4, src4, mask6, mask2, mask2,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt2, filt2, out0, out1);
        out2 = FUNC12(out2, vec2, filt2);
        FUNC10(src2, src3, src3, src3, src4, src4, mask7, mask3, mask3,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt3, filt3, out0, out1);
        out2 = FUNC12(out2, vec2, filt3);

        FUNC8(out0, out1, 6);
        out2 = FUNC13(out2, 6);
        FUNC6(out0, out1, out2, 7);
        out = FUNC5(out3, out0);
        FUNC9(out, dst + 16);
        out = FUNC5(out1, out2);
        FUNC9(out, dst + 32);
        dst += dst_stride;
    }
}