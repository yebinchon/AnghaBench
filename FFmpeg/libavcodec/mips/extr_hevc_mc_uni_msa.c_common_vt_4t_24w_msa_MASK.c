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
typedef  scalar_t__ v8i16 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    uint64_t out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src11, filt0, filt1;
    v16i8 src10_r, src32_r, src76_r, src98_r, src21_r, src43_r, src87_r;
    v16i8 src109_r, src10_l, src32_l, src21_l, src43_l;
    v16u8 out;
    v8i16 filt, out0_r, out1_r, out2_r, out3_r, out0_l, out1_l;

    src -= src_stride;

    filt = FUNC5(filter);
    FUNC11(filt, 0, 1, filt0, filt1);

    /* 16 width */
    FUNC4(src, src_stride, src0, src1, src2);
    FUNC18(src0, src1, src2);
    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    FUNC1(src1, src0, src2, src1, src10_l, src21_l);

    /* 8 width */
    FUNC4(src + 16, src_stride, src6, src7, src8);
    src += (3 * src_stride);
    FUNC18(src6, src7, src8);
    FUNC2(src7, src6, src8, src7, src76_r, src87_r);

    for (loop_cnt = 8; loop_cnt--;) {
        /* 16 width */
        FUNC3(src, src_stride, src3, src4);
        FUNC16(src3, src4);
        FUNC2(src3, src2, src4, src3, src32_r, src43_r);
        FUNC1(src3, src2, src4, src3, src32_l, src43_l);

        /* 8 width */
        FUNC3(src + 16, src_stride, src9, src10);
        src += (2 * src_stride);
        FUNC16(src9, src10);
        FUNC2(src9, src8, src10, src9, src98_r, src109_r);

        /* 16 width */
        out0_r = FUNC0(src10_r, src32_r, filt0, filt1);
        out0_l = FUNC0(src10_l, src32_l, filt0, filt1);
        out1_r = FUNC0(src21_r, src43_r, filt0, filt1);
        out1_l = FUNC0(src21_l, src43_l, filt0, filt1);

        /* 8 width */
        out2_r = FUNC0(src76_r, src98_r, filt0, filt1);
        out3_r = FUNC0(src87_r, src109_r, filt0, filt1);

        /* 16 + 8 width */
        FUNC13(out0_r, out1_r, out2_r, out3_r, 6);
        FUNC12(out0_l, out1_l, 6);
        FUNC9(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC8(out0_l, out1_l, 7);
        out = FUNC7(out0_r, out0_l);
        FUNC15(out, dst);
        FUNC6(out2_r, out2_r, out3_r, out3_r, out2_r, out3_r);
        FUNC17(out2_r, out3_r);
        out0 = FUNC19((v2i64) out2_r, 0);
        out1 = FUNC19((v2i64) out3_r, 0);
        FUNC10(out0, dst + 16);
        dst += dst_stride;
        out = FUNC7(out1_r, out1_l);
        FUNC15(out, dst);
        FUNC10(out1, dst + 16);
        dst += dst_stride;

        /* 16 width */
        FUNC3(src, src_stride, src5, src2);
        FUNC16(src5, src2);
        FUNC2(src5, src4, src2, src5, src10_r, src21_r);
        FUNC1(src5, src4, src2, src5, src10_l, src21_l);

        /* 8 width */
        FUNC3(src + 16, src_stride, src11, src8);
        src += (2 * src_stride);
        FUNC16(src11, src8);
        FUNC2(src11, src10, src8, src11, src76_r, src87_r);

        /* 16 width */
        out0_r = FUNC0(src32_r, src10_r, filt0, filt1);
        out0_l = FUNC0(src32_l, src10_l, filt0, filt1);
        out1_r = FUNC0(src43_r, src21_r, filt0, filt1);
        out1_l = FUNC0(src43_l, src21_l, filt0, filt1);

        /* 8 width */
        out2_r = FUNC0(src98_r, src76_r, filt0, filt1);
        out3_r = FUNC0(src109_r, src87_r, filt0, filt1);

        /* 16 + 8 width */
        FUNC13(out0_r, out1_r, out2_r, out3_r, 6);
        FUNC12(out0_l, out1_l, 6);
        FUNC9(out0_r, out1_r, out2_r, out3_r, 7);
        FUNC8(out0_l, out1_l, 7);
        out = FUNC7(out0_r, out0_l);
        FUNC15(out, dst);
        out = FUNC7(out2_r, out2_r);
        FUNC14(out, 0, dst + 16);
        dst += dst_stride;
        out = FUNC7(out1_r, out1_l);
        FUNC15(out, dst);
        out = FUNC7(out3_r, out3_r);
        FUNC14(out, 0, dst + 16);
        dst += dst_stride;
    }
}