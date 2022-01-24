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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t height,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    int32_t loop_cnt;
    v16u8 out0, out1, out2, out3, out4, out5;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v16i8 src10_l, src32_l, src54_l, src21_l, src43_l, src65_l;
    v16i8 src2110, src4332;
    v16i8 src54_r, src76_r, src98_r, src65_r, src87_r, src109_r;
    v16i8 src76_l, src98_l, src87_l, src109_l, src6554, src8776, src10998;
    v8i16 filt0, filt1;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst8;
    v8i16 dst9, dst10, dst11, filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= (1 * src_stride);

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC17(weight);
    rnd_vec = FUNC17(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC16(weight);
    offset_vec = FUNC16(offset);
    denom_vec = FUNC16(rnd_val);

    weight_vec_h = FUNC19(weight_vec_h, denom_vec);
    offset_vec = FUNC15(offset_vec, weight_vec_h);

    filter_vec = FUNC8(filter);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    FUNC6(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC13(src0, src1, src2);
    FUNC5(src1, src0, src2, src1, src10_r, src21_r);
    FUNC3(src1, src0, src2, src1, src10_l, src21_l);
    src2110 = (v16i8) FUNC18((v2i64) src21_l, (v2i64) src10_l);

    for (loop_cnt = 2; loop_cnt--;) {
        FUNC7(src, src_stride, src3, src4, src5, src6, src7, src8, src9, src10);
        src += (8 * src_stride);
        FUNC14(src3, src4, src5, src6, src7, src8, src9, src10);
        FUNC4(src3, src2, src32_r, src32_l);
        FUNC4(src4, src3, src43_r, src43_l);
        FUNC4(src5, src4, src54_r, src54_l);
        FUNC4(src6, src5, src65_r, src65_l);
        src4332 = (v16i8) FUNC18((v2i64) src43_l, (v2i64) src32_l);
        src6554 = (v16i8) FUNC18((v2i64) src65_l, (v2i64) src54_l);
        dst0 = FUNC0(src10_r, src32_r, filt0, filt1);
        dst1 = FUNC0(src21_r, src43_r, filt0, filt1);
        dst2 = FUNC0(src32_r, src54_r, filt0, filt1);
        dst3 = FUNC0(src43_r, src65_r, filt0, filt1);
        dst4 = FUNC0(src2110, src4332, filt0, filt1);
        dst5 = FUNC0(src4332, src6554, filt0, filt1);
        FUNC2(dst0, dst1, dst2, dst3, weight_vec,
                                       offset_vec, rnd_vec, dst0, dst1, dst2,
                                       dst3);
        FUNC1(dst4, dst5, weight_vec, offset_vec,
                                       rnd_vec, dst4, dst5);
        FUNC9(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
        FUNC11(out0, out1, 0, 1, 0, 1, dst, dst_stride);
        FUNC12(out2, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);

        FUNC4(src7, src6, src76_r, src76_l);
        FUNC4(src8, src7, src87_r, src87_l);
        FUNC4(src9, src8, src98_r, src98_l);
        FUNC4(src10, src9, src109_r, src109_l);
        src8776 = (v16i8) FUNC18((v2i64) src87_l, (v2i64) src76_l);
        src10998 = (v16i8) FUNC18((v2i64) src109_l, (v2i64) src98_l);
        dst6 = FUNC0(src54_r, src76_r, filt0, filt1);
        dst7 = FUNC0(src65_r, src87_r, filt0, filt1);
        dst8 = FUNC0(src76_r, src98_r, filt0, filt1);
        dst9 = FUNC0(src87_r, src109_r, filt0, filt1);
        dst10 = FUNC0(src6554, src8776, filt0, filt1);
        dst11 = FUNC0(src8776, src10998, filt0, filt1);
        FUNC2(dst6, dst7, dst8, dst9, weight_vec,
                                       offset_vec, rnd_vec, dst6, dst7, dst8,
                                       dst9);
        FUNC1(dst10, dst11, weight_vec, offset_vec,
                                       rnd_vec, dst10, dst11);
        FUNC9(dst7, dst6, dst9, dst8, dst11, dst10, out3, out4, out5);
        FUNC11(out3, out4, 0, 1, 0, 1, dst, dst_stride);
        FUNC12(out5, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);

        src2 = src10;
        src10_r = src98_r;
        src21_r = src109_r;
        src2110 = src10998;
    }
}