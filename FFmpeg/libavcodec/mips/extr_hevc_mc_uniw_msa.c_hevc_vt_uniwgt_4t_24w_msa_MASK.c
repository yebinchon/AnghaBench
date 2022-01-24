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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t height,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    uint32_t loop_cnt;
    v16u8 out0, out1, out2, out3, out4, out5;
    v16i8 src0, src1, src2, src3, src4, src5;
    v16i8 src6, src7, src8, src9, src10, src11, src12, src13;
    v16i8 src10_r, src32_r, src54_r, src21_r, src43_r, src65_r;
    v16i8 src10_l, src32_l, src54_l, src21_l, src43_l, src65_l;
    v16i8 src87_r, src98_r, src109_r, src1110_r, src1211_r, src1312_r;
    v8i16 filt0, filt1;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8, dst9, dst10;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec, dst11;
    v4i32 weight_vec, rnd_vec;

    src -= src_stride;

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC17(weight);
    rnd_vec = FUNC17(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC16(weight);
    offset_vec = FUNC16(offset);
    denom_vec = FUNC16(rnd_val);

    weight_vec_h = FUNC18(weight_vec_h, denom_vec);
    offset_vec = FUNC15(offset_vec, weight_vec_h);

    filter_vec = FUNC7(filter);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    FUNC5(src, src_stride, src0, src1, src2);
    FUNC5(src + 16, src_stride, src7, src8, src9);
    src += (3 * src_stride);
    FUNC13(src0, src1, src2);
    FUNC13(src7, src8, src9);
    FUNC4(src1, src0, src2, src1, src10_r, src21_r);
    FUNC2(src1, src0, src2, src1, src10_l, src21_l);
    FUNC4(src8, src7, src9, src8, src87_r, src98_r);

    for (loop_cnt = 8; loop_cnt--;) {
        FUNC6(src, src_stride, src3, src4, src5, src6);
        FUNC6(src + 16, src_stride, src10, src11, src12, src13);
        src += (4 * src_stride);
        FUNC14(src3, src4, src5, src6);
        FUNC14(src10, src11, src12, src13);
        FUNC4(src3, src2, src4, src3, src32_r, src43_r);
        FUNC2(src3, src2, src4, src3, src32_l, src43_l);
        FUNC3(src5, src4, src54_r, src54_l);
        FUNC3(src6, src5, src65_r, src65_l);
        FUNC4(src10, src9, src11, src10, src109_r, src1110_r);
        FUNC4(src12, src11, src13, src12, src1211_r, src1312_r);
        dst0 = FUNC0(src10_r, src32_r, filt0, filt1);
        dst1 = FUNC0(src21_r, src43_r, filt0, filt1);
        dst2 = FUNC0(src32_r, src54_r, filt0, filt1);
        dst3 = FUNC0(src43_r, src65_r, filt0, filt1);
        dst4 = FUNC0(src10_l, src32_l, filt0, filt1);
        dst5 = FUNC0(src21_l, src43_l, filt0, filt1);
        dst6 = FUNC0(src32_l, src54_l, filt0, filt1);
        dst7 = FUNC0(src43_l, src65_l, filt0, filt1);
        dst8 = FUNC0(src87_r, src109_r, filt0, filt1);
        dst9 = FUNC0(src98_r, src1110_r, filt0, filt1);
        dst10 = FUNC0(src109_r, src1211_r, filt0, filt1);
        dst11 = FUNC0(src1110_r, src1312_r, filt0, filt1);
        FUNC1(dst0, dst1, dst2, dst3, weight_vec,
                                       offset_vec, rnd_vec, dst0, dst1, dst2,
                                       dst3);
        FUNC1(dst4, dst5, dst6, dst7, weight_vec,
                                       offset_vec, rnd_vec, dst4, dst5, dst6,
                                       dst7);
        FUNC1(dst8, dst9, dst10, dst11, weight_vec,
                                       offset_vec, rnd_vec, dst8, dst9, dst10,
                                       dst11);
        FUNC9(dst4, dst0, dst5, dst1, dst6, dst2, dst7, dst3, out0, out1,
                    out2, out3);
        FUNC8(dst9, dst8, dst11, dst10, out4, out5);
        FUNC12(out0, out1, out2, out3, dst, dst_stride);
        FUNC11(out4, out5, 0, 1, 0, 1, dst + 16, dst_stride);
        dst += (4 * dst_stride);

        src2 = src6;
        src9 = src13;
        src10_r = src54_r;
        src21_r = src65_r;
        src10_l = src54_l;
        src21_l = src65_l;
        src87_r = src1211_r;
        src98_r = src1312_r;
    }
}