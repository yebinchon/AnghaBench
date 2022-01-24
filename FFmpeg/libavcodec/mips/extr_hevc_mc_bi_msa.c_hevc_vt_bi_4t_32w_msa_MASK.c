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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    uint32_t loop_cnt;
    uint8_t *dst_tmp = dst + 16;
    v16i8 src0, src1, src2, src3, src4, src6, src7, src8, src9, src10;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 src10_r, src32_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src87_r, src109_r;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r;
    v16i8 src10_l, src32_l, src76_l, src98_l;
    v16i8 src21_l, src43_l, src87_l, src109_l;
    v8i16 dst0_l, dst1_l, dst2_l, dst3_l;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= src_stride;

    const_vec = FUNC13(128);
    const_vec <<= 6;

    filter_vec = FUNC6(filter);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    /* 16width */
    FUNC5(src0_ptr, src_stride, src0, src1, src2);
    FUNC12(src0, src1, src2);
    FUNC3(src1, src0, src2, src1, src10_r, src21_r);
    FUNC2(src1, src0, src2, src1, src10_l, src21_l);

    /* next 16width */
    FUNC5(src0_ptr + 16, src_stride, src6, src7, src8);
    src0_ptr += (3 * src_stride);
    FUNC12(src6, src7, src8);
    FUNC3(src7, src6, src8, src7, src76_r, src87_r);
    FUNC2(src7, src6, src8, src7, src76_l, src87_l);

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        /* 16width */
        FUNC4(src0_ptr, src_stride, src3, src4);
        FUNC7(src1_ptr, src2_stride, in0, in1);
        FUNC7((src1_ptr + 8), src2_stride, in2, in3);
        FUNC7((src1_ptr + 16), src2_stride, in4, in5);
        FUNC7((src1_ptr + 24), src2_stride, in6, in7);
        src1_ptr += (2 * src2_stride);
        FUNC11(src3, src4);
        FUNC3(src3, src2, src4, src3, src32_r, src43_r);
        FUNC2(src3, src2, src4, src3, src32_l, src43_l);
        /* 16width */
        dst0_r = const_vec;
        FUNC0(src10_r, src32_r, filt0, filt1, dst0_r, dst0_r);
        dst0_l = const_vec;
        FUNC0(src10_l, src32_l, filt0, filt1, dst0_l, dst0_l);
        dst1_r = const_vec;
        FUNC0(src21_r, src43_r, filt0, filt1, dst1_r, dst1_r);
        dst1_l = const_vec;
        FUNC0(src21_l, src43_l, filt0, filt1, dst1_l, dst1_l);
        /* 16width */
        FUNC1(in0, in1, in2, in3,
                          dst0_r, dst1_r, dst0_l, dst1_l, 7,
                          dst0_r, dst1_r, dst0_l, dst1_l);

        src10_r = src32_r;
        src21_r = src43_r;
        src10_l = src32_l;
        src21_l = src43_l;
        src2 = src4;

        FUNC8(dst0_l, dst0_r, dst1_l, dst1_r, dst0_r, dst1_r);
        FUNC10(dst0_r, dst1_r, dst, dst_stride);
        dst += (2 * dst_stride);

        /* next 16width */
        FUNC4(src0_ptr + 16, src_stride, src9, src10);
        src0_ptr += (2 * src_stride);
        FUNC11(src9, src10);
        FUNC3(src9, src8, src10, src9, src98_r, src109_r);
        FUNC2(src9, src8, src10, src9, src98_l, src109_l);
        /* next 16width */
        dst2_r = const_vec;
        FUNC0(src76_r, src98_r, filt0, filt1, dst2_r, dst2_r);
        dst2_l = const_vec;
        FUNC0(src76_l, src98_l, filt0, filt1, dst2_l, dst2_l);
        dst3_r = const_vec;
        FUNC0(src87_r, src109_r, filt0, filt1, dst3_r, dst3_r);
        dst3_l = const_vec;
        FUNC0(src87_l, src109_l, filt0, filt1, dst3_l, dst3_l);
        /* next 16width */
        FUNC1(in4, in5, in6, in7,
                          dst2_r, dst3_r, dst2_l, dst3_l, 7,
                          dst2_r, dst3_r, dst2_l, dst3_l);

        FUNC8(dst2_l, dst2_r, dst3_l, dst3_r, dst2_r, dst3_r);
        FUNC10(dst2_r, dst3_r, dst_tmp, dst_stride);
        dst_tmp += (2 * dst_stride);

        src76_r = src98_r;
        src87_r = src109_r;
        src76_l = src98_l;
        src87_l = src109_l;
        src8 = src10;
    }
}