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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** subpel_filters_msa ; 

void FUNC12(uint8_t *dst, ptrdiff_t dst_stride,
                             uint8_t *src, ptrdiff_t src_stride,
                             int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = subpel_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src76_r, src98_r, src21_r, src43_r, src87_r;
    v16i8 src109_r, filt0, filt1, filt2;
    v16u8 tmp0, tmp1;
    v8i16 filt, out0_r, out1_r, out2_r, out3_r;

    src -= (2 * src_stride);

    filt = FUNC4(filter);
    FUNC7(filt, 0, 1, 2, filt0, filt1, filt2);

    FUNC3(src, src_stride, src0, src1, src2, src3, src4);
    src += (5 * src_stride);

    FUNC11(src0, src1, src2, src3, src4);
    FUNC1(src1, src0, src3, src2, src2, src1, src4, src3,
               src10_r, src32_r, src21_r, src43_r);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC2(src, src_stride, src7, src8, src9, src10);
        FUNC10(src7, src8, src9, src10);
        src += (4 * src_stride);

        FUNC1(src7, src4, src8, src7, src9, src8, src10, src9, src76_r,
                   src87_r, src98_r, src109_r);
        out0_r = FUNC0(src10_r, src32_r, src76_r, filt0, filt1, filt2);
        out1_r = FUNC0(src21_r, src43_r, src87_r, filt0, filt1, filt2);
        out2_r = FUNC0(src32_r, src76_r, src98_r, filt0, filt1, filt2);
        out3_r = FUNC0(src43_r, src87_r, src109_r, filt0, filt1, filt2);
        FUNC8(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC6(out0_r, out1_r, out2_r, out3_r, 7);
        tmp0 = FUNC5(out0_r, out1_r);
        tmp1 = FUNC5(out2_r, out3_r);
        FUNC9(tmp0, tmp1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);

        src10_r = src76_r;
        src32_r = src98_r;
        src21_r = src87_r;
        src43_r = src109_r;
        src4 = src10;
    }
}