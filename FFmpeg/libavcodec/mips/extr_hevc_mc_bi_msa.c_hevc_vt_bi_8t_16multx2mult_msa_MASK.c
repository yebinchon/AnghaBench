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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(uint8_t *src0_ptr,
                                           int32_t src_stride,
                                           int16_t *src1_ptr,
                                           int32_t src2_stride,
                                           uint8_t *dst,
                                           int32_t dst_stride,
                                           const int8_t *filter,
                                           int32_t height, int32_t width)
{
    uint8_t *src0_ptr_tmp;
    int16_t *src1_ptr_tmp;
    uint8_t *dst_tmp;
    uint32_t loop_cnt;
    uint32_t cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 in0, in1, in2, in3;
    v16i8 src10_r, src32_r, src54_r, src76_r;
    v16i8 src21_r, src43_r, src65_r, src87_r;
    v8i16 dst0_r, dst1_r;
    v16i8 src10_l, src32_l, src54_l, src76_l;
    v16i8 src21_l, src43_l, src65_l, src87_l;
    v8i16 dst0_l, dst1_l;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filter_vec, const_vec;

    src0_ptr -= (3 * src_stride);
    const_vec = FUNC15(128);
    const_vec <<= 6;

    filter_vec = FUNC8(filter);
    FUNC11(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    for (cnt = (width >> 4); cnt--;) {
        src0_ptr_tmp = src0_ptr;
        src1_ptr_tmp = src1_ptr;
        dst_tmp = dst;

        FUNC7(src0_ptr_tmp, src_stride,
               src0, src1, src2, src3, src4, src5, src6);
        src0_ptr_tmp += (7 * src_stride);
        FUNC14(src0, src1, src2, src3, src4, src5, src6);

        FUNC5(src1, src0, src3, src2, src5, src4, src2, src1,
                   src10_r, src32_r, src54_r, src21_r);
        FUNC4(src4, src3, src6, src5, src43_r, src65_r);
        FUNC3(src1, src0, src3, src2, src5, src4, src2, src1,
                   src10_l, src32_l, src54_l, src21_l);
        FUNC2(src4, src3, src6, src5, src43_l, src65_l);

        for (loop_cnt = (height >> 1); loop_cnt--;) {
            FUNC6(src0_ptr_tmp, src_stride, src7, src8);
            src0_ptr_tmp += (2 * src_stride);
            FUNC9(src1_ptr_tmp, src2_stride, in0, in1);
            FUNC9((src1_ptr_tmp + 8), src2_stride, in2, in3);
            src1_ptr_tmp += (2 * src2_stride);
            FUNC13(src7, src8);

            FUNC4(src7, src6, src8, src7, src76_r, src87_r);
            FUNC2(src7, src6, src8, src7, src76_l, src87_l);

            dst0_r = const_vec;
            FUNC0(src10_r, src32_r, src54_r, src76_r,
                         filt0, filt1, filt2, filt3,
                         dst0_r, dst0_r, dst0_r, dst0_r);
            dst1_r = const_vec;
            FUNC0(src21_r, src43_r, src65_r, src87_r,
                         filt0, filt1, filt2, filt3,
                         dst1_r, dst1_r, dst1_r, dst1_r);
            dst0_l = const_vec;
            FUNC0(src10_l, src32_l, src54_l, src76_l,
                         filt0, filt1, filt2, filt3,
                         dst0_l, dst0_l, dst0_l, dst0_l);
            dst1_l = const_vec;
            FUNC0(src21_l, src43_l, src65_l, src87_l,
                         filt0, filt1, filt2, filt3,
                         dst1_l, dst1_l, dst1_l, dst1_l);

            FUNC1(in0, in1, in2, in3,
                              dst0_r, dst1_r, dst0_l, dst1_l, 7,
                              dst0_r, dst1_r, dst0_l, dst1_l);

            FUNC10(dst0_l, dst0_r, dst1_l, dst1_r, dst0_r, dst1_r);
            FUNC12(dst0_r, dst1_r, dst_tmp, dst_stride);
            dst_tmp += (2 * dst_stride);

            src10_r = src32_r;
            src32_r = src54_r;
            src54_r = src76_r;
            src21_r = src43_r;
            src43_r = src65_r;
            src65_r = src87_r;
            src10_l = src32_l;
            src32_l = src54_l;
            src54_l = src76_l;
            src21_l = src43_l;
            src43_l = src65_l;
            src65_l = src87_l;
            src6 = src8;
        }

        src0_ptr += 16;
        src1_ptr += 16;
        dst += 16;
    }
}