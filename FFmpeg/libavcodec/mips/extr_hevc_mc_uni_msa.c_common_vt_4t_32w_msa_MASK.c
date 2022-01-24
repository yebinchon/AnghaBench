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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src87_r, src109_r;
    v8i16 out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l;
    v16i8 src10_l, src32_l, src76_l, src98_l;
    v16i8 src21_l, src43_l, src87_l, src109_l;
    v8i16 filt;
    v16i8 filt0, filt1;
    v16u8 out;

    src -= src_stride;

    filt = FUNC5(filter);
    FUNC8(filt, 0, 1, filt0, filt1);

    /* 16 width */
    FUNC4(src, src_stride, src0, src1, src2);
    FUNC12(src0, src1, src2);

    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    FUNC1(src1, src0, src2, src1, src10_l, src21_l);

    /* next 16 width */
    FUNC4(src + 16, src_stride, src6, src7, src8);
    src += (3 * src_stride);

    FUNC12(src6, src7, src8);
    FUNC2(src7, src6, src8, src7, src76_r, src87_r);
    FUNC1(src7, src6, src8, src7, src76_l, src87_l);

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        /* 16 width */
        FUNC3(src, src_stride, src3, src4);
        FUNC11(src3, src4);
        FUNC2(src3, src2, src4, src3, src32_r, src43_r);
        FUNC1(src3, src2, src4, src3, src32_l, src43_l);

        /* 16 width */
        out0_r = FUNC0(src10_r, src32_r, filt0, filt1);
        out0_l = FUNC0(src10_l, src32_l, filt0, filt1);
        out1_r = FUNC0(src21_r, src43_r, filt0, filt1);
        out1_l = FUNC0(src21_l, src43_l, filt0, filt1);

        /* 16 width */
        FUNC9(out0_r, out1_r, out0_l, out1_l, 6);
        FUNC7(out0_r, out1_r, out0_l, out1_l, 7);
        out = FUNC6(out0_r, out0_l);
        FUNC10(out, dst);
        out = FUNC6(out1_r, out1_l);
        FUNC10(out, dst + dst_stride);

        src10_r = src32_r;
        src21_r = src43_r;
        src10_l = src32_l;
        src21_l = src43_l;
        src2 = src4;

        /* next 16 width */
        FUNC3(src + 16, src_stride, src9, src10);
        src += (2 * src_stride);
        FUNC11(src9, src10);
        FUNC2(src9, src8, src10, src9, src98_r, src109_r);
        FUNC1(src9, src8, src10, src9, src98_l, src109_l);

        /* next 16 width */
        out2_r = FUNC0(src76_r, src98_r, filt0, filt1);
        out2_l = FUNC0(src76_l, src98_l, filt0, filt1);
        out3_r = FUNC0(src87_r, src109_r, filt0, filt1);
        out3_l = FUNC0(src87_l, src109_l, filt0, filt1);

        /* next 16 width */
        FUNC9(out2_r, out3_r, out2_l, out3_l, 6);
        FUNC7(out2_r, out3_r, out2_l, out3_l, 7);
        out = FUNC6(out2_r, out2_l);
        FUNC10(out, dst + 16);
        out = FUNC6(out3_r, out3_l);
        FUNC10(out, dst + 16 + dst_stride);

        dst += 2 * dst_stride;

        src76_r = src98_r;
        src87_r = src109_r;
        src76_l = src98_l;
        src87_l = src109_l;
        src8 = src10;
    }
}