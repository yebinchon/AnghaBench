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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(const uint8_t *src,
                                                   int32_t src_stride,
                                                   uint8_t *dst,
                                                   int32_t dst_stride,
                                                   const int8_t *filter,
                                                   int32_t height,
                                                   int32_t width)
{
    const uint8_t *src_tmp;
    uint8_t *dst_tmp;
    uint32_t loop_cnt, cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r, src21_r, src43_r;
    v16i8 src65_r, src87_r, src109_r, src10_l, src32_l, src54_l, src76_l;
    v16i8 src98_l, src21_l, src43_l, src65_l, src87_l, src109_l;
    v16i8 filt0, filt1, filt2, filt3;
    v16u8 dst0, dst1, dst2, dst3, tmp0, tmp1, tmp2, tmp3;
    v8i16 out0_r, out1_r, out2_r, out3_r, out0_l, out1_l, out2_l, out3_l, filt;

    src -= (3 * src_stride);

    filt = FUNC8(filter);
    FUNC12(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    for (cnt = (width >> 4); cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC7(src_tmp, src_stride, src0, src1, src2, src3, src4, src5, src6);
        FUNC17(src0, src1, src2, src3, src4, src5, src6);
        src_tmp += (7 * src_stride);

        FUNC5(src1, src0, src3, src2, src5, src4, src2, src1, src10_r,
                   src32_r, src54_r, src21_r);
        FUNC4(src4, src3, src6, src5, src43_r, src65_r);
        FUNC3(src1, src0, src3, src2, src5, src4, src2, src1, src10_l,
                   src32_l, src54_l, src21_l);
        FUNC2(src4, src3, src6, src5, src43_l, src65_l);

        for (loop_cnt = (height >> 2); loop_cnt--;) {
            FUNC6(src_tmp, src_stride, src7, src8, src9, src10);
            src_tmp += (4 * src_stride);

            FUNC9(dst_tmp, dst_stride, dst0, dst1, dst2, dst3);
            FUNC15(src7, src8, src9, src10);
            FUNC5(src7, src6, src8, src7, src9, src8, src10, src9, src76_r,
                       src87_r, src98_r, src109_r);
            FUNC3(src7, src6, src8, src7, src9, src8, src10, src9, src76_l,
                       src87_l, src98_l, src109_l);
            out0_r = FUNC1(src10_r, src32_r, src54_r, src76_r,
                                         filt0, filt1, filt2, filt3);
            out1_r = FUNC1(src21_r, src43_r, src65_r, src87_r,
                                         filt0, filt1, filt2, filt3);
            out2_r = FUNC1(src32_r, src54_r, src76_r, src98_r,
                                         filt0, filt1, filt2, filt3);
            out3_r = FUNC1(src43_r, src65_r, src87_r, src109_r,
                                         filt0, filt1, filt2, filt3);
            out0_l = FUNC1(src10_l, src32_l, src54_l, src76_l,
                                         filt0, filt1, filt2, filt3);
            out1_l = FUNC1(src21_l, src43_l, src65_l, src87_l,
                                         filt0, filt1, filt2, filt3);
            out2_l = FUNC1(src32_l, src54_l, src76_l, src98_l,
                                         filt0, filt1, filt2, filt3);
            out3_l = FUNC1(src43_l, src65_l, src87_l, src109_l,
                                         filt0, filt1, filt2, filt3);
            FUNC13(out0_r, out1_r, out2_r, out3_r, 7);
            FUNC13(out0_l, out1_l, out2_l, out3_l, 7);
            FUNC11(out0_r, out1_r, out2_r, out3_r, 7);
            FUNC11(out0_l, out1_l, out2_l, out3_l, 7);
            FUNC10(out0_l, out0_r, out1_l, out1_r, out2_l, out2_r, out3_l,
                        out3_r, tmp0, tmp1, tmp2, tmp3);
            FUNC16(tmp0, tmp1, tmp2, tmp3);
            FUNC0(tmp0, dst0, tmp1, dst1, tmp2, dst2, tmp3, dst3,
                        dst0, dst1, dst2, dst3);
            FUNC14(dst0, dst1, dst2, dst3, dst_tmp, dst_stride);
            dst_tmp += (4 * dst_stride);

            src10_r = src54_r;
            src32_r = src76_r;
            src54_r = src98_r;
            src21_r = src65_r;
            src43_r = src87_r;
            src65_r = src109_r;
            src10_l = src54_l;
            src32_l = src76_l;
            src54_l = src98_l;
            src21_l = src65_l;
            src43_l = src87_l;
            src65_l = src109_l;
            src6 = src10;
        }

        src += 16;
        dst += 16;
    }
}