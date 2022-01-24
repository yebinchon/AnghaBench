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
typedef  int v8i16 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(uint8_t *src, int32_t src_stride,
                              int16_t *dst, int32_t dst_stride,
                              const int8_t *filter, int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v8i16 filter_vec, const_vec;
    v8i16 filt0, filt1, filt2, filt3;

    src -= (3 * src_stride);
    const_vec = FUNC10(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC6(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);
    FUNC9(src0, src1, src2, src3, src4, src5, src6);
    FUNC2(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_r, src32_r, src54_r, src21_r);
    FUNC1(src4, src3, src6, src5, src43_r, src65_r);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src7, src8, src9, src10);
        src += (4 * src_stride);
        FUNC8(src7, src8, src9, src10);
        FUNC2(src7, src6, src8, src7, src9, src8, src10, src9,
                   src76_r, src87_r, src98_r, src109_r);

        dst0_r = const_vec;
        FUNC0(src10_r, src32_r, src54_r, src76_r,
                     filt0, filt1, filt2, filt3,
                     dst0_r, dst0_r, dst0_r, dst0_r);
        dst1_r = const_vec;
        FUNC0(src21_r, src43_r, src65_r, src87_r,
                     filt0, filt1, filt2, filt3,
                     dst1_r, dst1_r, dst1_r, dst1_r);
        dst2_r = const_vec;
        FUNC0(src32_r, src54_r, src76_r, src98_r,
                     filt0, filt1, filt2, filt3,
                     dst2_r, dst2_r, dst2_r, dst2_r);
        dst3_r = const_vec;
        FUNC0(src43_r, src65_r, src87_r, src109_r,
                     filt0, filt1, filt2, filt3,
                     dst3_r, dst3_r, dst3_r, dst3_r);

        FUNC7(dst0_r, dst1_r, dst2_r, dst3_r, dst, dst_stride);
        dst += (4 * dst_stride);

        src10_r = src54_r;
        src32_r = src76_r;
        src54_r = src98_r;
        src21_r = src65_r;
        src43_r = src87_r;
        src65_r = src109_r;
        src6 = src10;
    }
}