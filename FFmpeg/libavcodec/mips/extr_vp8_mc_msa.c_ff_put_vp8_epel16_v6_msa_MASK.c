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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** subpel_filters_msa ; 

void FUNC14(uint8_t *dst, ptrdiff_t dst_stride,
                              uint8_t *src, ptrdiff_t src_stride,
                              int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = subpel_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r, src21_r, src43_r, src65_r;
    v16i8 src87_r, src10_l, src32_l, src54_l, src76_l, src21_l, src43_l;
    v16i8 src65_l, src87_l, filt0, filt1, filt2;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v8i16 out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l, filt;

    src -= (2 * src_stride);

    filt = FUNC5(filter);
    FUNC8(filt, 0, 1, 2, filt0, filt1, filt2);

    FUNC4(src, src_stride, src0, src1, src2, src3, src4);
    src += (5 * src_stride);

    FUNC13(src0, src1, src2, src3, src4);
    FUNC2(src1, src0, src3, src2, src4, src3, src2, src1, src10_r,
               src32_r, src43_r, src21_r);
    FUNC1(src1, src0, src3, src2, src4, src3, src2, src1, src10_l,
               src32_l, src43_l, src21_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src5, src6, src7, src8);
        src += (4 * src_stride);

        FUNC11(src5, src6, src7, src8);
        FUNC2(src5, src4, src6, src5, src7, src6, src8, src7, src54_r,
                   src65_r, src76_r, src87_r);
        FUNC1(src5, src4, src6, src5, src7, src6, src8, src7, src54_l,
                   src65_l, src76_l, src87_l);
        out0_r = FUNC0(src10_r, src32_r, src54_r, filt0, filt1,
                              filt2);
        out1_r = FUNC0(src21_r, src43_r, src65_r, filt0, filt1,
                              filt2);
        out2_r = FUNC0(src32_r, src54_r, src76_r, filt0, filt1,
                              filt2);
        out3_r = FUNC0(src43_r, src65_r, src87_r, filt0, filt1,
                              filt2);
        out0_l = FUNC0(src10_l, src32_l, src54_l, filt0, filt1,
                              filt2);
        out1_l = FUNC0(src21_l, src43_l, src65_l, filt0, filt1,
                              filt2);
        out2_l = FUNC0(src32_l, src54_l, src76_l, filt0, filt1,
                              filt2);
        out3_l = FUNC0(src43_l, src65_l, src87_l, filt0, filt1,
                              filt2);
        FUNC9(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC9(out0_l, out1_l, out2_l, out3_l, 7);
        FUNC7(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC7(out0_l, out1_l, out2_l, out3_l, 7);
        FUNC6(out0_l, out0_r, out1_l, out1_r, out2_l, out2_r, out3_l,
                    out3_r, tmp0, tmp1, tmp2, tmp3);
        FUNC12(tmp0, tmp1, tmp2, tmp3);
        FUNC10(tmp0, tmp1, tmp2, tmp3, dst, dst_stride);
        dst += (4 * dst_stride);

        src10_r = src54_r;
        src32_r = src76_r;
        src21_r = src65_r;
        src43_r = src87_r;
        src10_l = src54_l;
        src32_l = src76_l;
        src21_l = src65_l;
        src43_l = src87_l;
        src4 = src8;
    }
}