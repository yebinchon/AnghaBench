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
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v16i8 src10_l, src32_l, src54_l, src76_l, src98_l;
    v16i8 src21_l, src43_l, src65_l, src87_l, src109_l;
    v16i8 src2110, src4332, src6554, src8776, src10998;
    v8i16 dst0_l, dst1_l;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filter_vec, const_vec;

    src0_ptr -= (3 * src_stride);
    const_vec = FUNC20(128);
    const_vec <<= 6;

    filter_vec = FUNC12(filter);
    FUNC15(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    FUNC11(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src0_ptr += (7 * src_stride);
    FUNC19(src0, src1, src2, src3, src4, src5, src6);

    FUNC6(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_r, src32_r, src54_r, src21_r);
    FUNC5(src4, src3, src6, src5, src43_r, src65_r);
    FUNC4(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_l, src32_l, src54_l, src21_l);
    FUNC3(src4, src3, src6, src5, src43_l, src65_l);
    FUNC9(src21_l, src10_l, src43_l, src32_l, src65_l, src54_l,
               src2110, src4332, src6554);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC10(src0_ptr, src_stride, src7, src8, src9, src10);
        src0_ptr += (4 * src_stride);
        FUNC13(src1_ptr, src2_stride, in0, in1, in2, in3);
        FUNC13((src1_ptr + 8), src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);

        FUNC8(in5, in4, in7, in6, in4, in5);
        FUNC18(src7, src8, src9, src10);
        FUNC6(src7, src6, src8, src7, src9, src8, src10, src9,
                   src76_r, src87_r, src98_r, src109_r);
        FUNC4(src7, src6, src8, src7, src9, src8, src10, src9,
                   src76_l, src87_l, src98_l, src109_l);
        FUNC7(src87_l, src76_l, src109_l, src98_l, src8776, src10998);

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
        dst0_l = const_vec;
        FUNC0(src2110, src4332, src6554, src8776,
                     filt0, filt1, filt2, filt3,
                     dst0_l, dst0_l, dst0_l, dst0_l);
        dst1_l = const_vec;
        FUNC0(src4332, src6554, src8776, src10998,
                     filt0, filt1, filt2, filt3,
                     dst1_l, dst1_l, dst1_l, dst1_l);

        FUNC2(in0, in1, in2, in3,
                          dst0_r, dst1_r, dst2_r, dst3_r, 7,
                          dst0_r, dst1_r, dst2_r, dst3_r);
        FUNC1(in4, in5, dst0_l, dst1_l, 7, dst0_l, dst1_l);


        FUNC14(dst1_r, dst0_r, dst3_r, dst2_r, dst0_r, dst1_r);
        dst0_l = (v8i16) FUNC21((v16i8) dst1_l, (v16i8) dst0_l);
        FUNC16(dst0_r, dst1_r, 0, 1, 0, 1, dst, dst_stride);
        FUNC17(dst0_l, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);

        src10_r = src54_r;
        src32_r = src76_r;
        src54_r = src98_r;
        src21_r = src65_r;
        src43_r = src87_r;
        src65_r = src109_r;
        src2110 = src6554;
        src4332 = src8776;
        src6554 = src10998;
        src6 = src10;
    }
}