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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src10_r, src32_r, src54_r, src21_r, src43_r, src65_r, src10_l;
    v16i8 src32_l, src54_l, src21_l, src43_l, src65_l, filt0, filt1;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt, out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l;

    src -= src_stride;

    filt = FUNC7(filter);
    FUNC10(filt, 0, 1, filt0, filt1);

    FUNC5(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC13(src0, src1, src2);
    FUNC3(src1, src0, src2, src1, src10_r, src21_r);
    FUNC1(src1, src0, src2, src1, src10_l, src21_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC6(src, src_stride, src3, src4, src5, src6);
        src += (4 * src_stride);

        FUNC14(src3, src4, src5, src6);
        FUNC4(src3, src2, src4, src3, src5, src4, src6, src5,
                   src32_r, src43_r, src54_r, src65_r);
        FUNC2(src3, src2, src4, src3, src5, src4, src6, src5,
                   src32_l, src43_l, src54_l, src65_l);
        out0_r = FUNC0(src10_r, src32_r, filt0, filt1);
        out1_r = FUNC0(src21_r, src43_r, filt0, filt1);
        out2_r = FUNC0(src32_r, src54_r, filt0, filt1);
        out3_r = FUNC0(src43_r, src65_r, filt0, filt1);
        out0_l = FUNC0(src10_l, src32_l, filt0, filt1);
        out1_l = FUNC0(src21_l, src43_l, filt0, filt1);
        out2_l = FUNC0(src32_l, src54_l, filt0, filt1);
        out3_l = FUNC0(src43_l, src65_l, filt0, filt1);
        FUNC11(out0_r, out1_r, out2_r, out3_r, 6);
        FUNC11(out0_l, out1_l, out2_l, out3_l, 6);
        FUNC9(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC9(out0_l, out1_l, out2_l, out3_l, 7);
        FUNC8(out0_l, out0_r, out1_l, out1_r, out2_l, out2_r, out3_l,
                    out3_r, tmp0, tmp1, tmp2, tmp3);
        FUNC15(tmp0, tmp1, tmp2, tmp3);
        FUNC12(tmp0, tmp1, tmp2, tmp3, dst, dst_stride);
        dst += (4 * dst_stride);

        src10_r = src54_r;
        src21_r = src65_r;
        src10_l = src54_l;
        src21_l = src65_l;
        src2 = src6;
    }
}