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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(uint8_t *src,
                                               int32_t src_stride,
                                               uint8_t *dst,
                                               int32_t dst_stride,
                                               const int8_t *filter,
                                               int32_t height,
                                               int32_t weight,
                                               int32_t offset,
                                               int32_t rnd_val,
                                               int32_t weightmul16)
{
    uint8_t *src_tmp;
    uint8_t *dst_tmp;
    int32_t loop_cnt, cnt;
    v16u8 out0, out1, out2, out3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src54_r, src76_r;
    v16i8 src21_r, src43_r, src65_r, src87_r;
    v16i8 src10_l, src32_l, src54_l, src76_l;
    v16i8 src21_l, src43_l, src65_l, src87_l;
    v16i8 src98_r, src109_r, src98_l, src109_l;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filter_vec;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= (3 * src_stride);

    weight_vec = FUNC16(weight);
    rnd_vec = FUNC16(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC15(weight);
    offset_vec = FUNC15(offset);
    denom_vec = FUNC15(rnd_val);

    weight_vec_h = FUNC17(weight_vec_h, denom_vec);
    offset_vec = FUNC14(offset_vec, weight_vec_h);

    filter_vec = FUNC8(filter);
    FUNC10(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    for (cnt = weightmul16; cnt--;) {
        src_tmp = src;
        dst_tmp = dst;

        FUNC7(src_tmp, src_stride, src0, src1, src2, src3, src4, src5, src6);
        src_tmp += (7 * src_stride);
        FUNC13(src0, src1, src2, src3, src4, src5, src6);

        for (loop_cnt = (height >> 2); loop_cnt--;) {
            FUNC6(src_tmp, src_stride, src7, src8, src9, src10);
            src_tmp += (4 * src_stride);
            FUNC12(src7, src8, src9, src10);

            FUNC5(src1, src0, src3, src2, src5, src4, src2, src1,
                       src10_r, src32_r, src54_r, src21_r);
            FUNC4(src4, src3, src6, src5, src43_r, src65_r);
            FUNC3(src1, src0, src3, src2, src5, src4, src2, src1,
                       src10_l, src32_l, src54_l, src21_l);
            FUNC2(src4, src3, src6, src5, src43_l, src65_l);
            FUNC5(src7, src6, src8, src7, src9, src8, src10, src9,
                       src76_r, src87_r, src98_r, src109_r);
            FUNC3(src7, src6, src8, src7, src9, src8, src10, src9,
                       src76_l, src87_l, src98_l, src109_l);

            dst0 = FUNC0(src10_r, src32_r, src54_r, src76_r, filt0,
                                     filt1, filt2, filt3);
            dst1 = FUNC0(src10_l, src32_l, src54_l, src76_l, filt0,
                                     filt1, filt2, filt3);
            dst2 = FUNC0(src21_r, src43_r, src65_r, src87_r, filt0,
                                     filt1, filt2, filt3);
            dst3 = FUNC0(src21_l, src43_l, src65_l, src87_l, filt0,
                                     filt1, filt2, filt3);
            dst4 = FUNC0(src32_r, src54_r, src76_r, src98_r, filt0,
                                     filt1, filt2, filt3);
            dst5 = FUNC0(src32_l, src54_l, src76_l, src98_l, filt0,
                                     filt1, filt2, filt3);
            dst6 = FUNC0(src43_r, src65_r, src87_r, src109_r, filt0,
                                     filt1, filt2, filt3);
            dst7 = FUNC0(src43_l, src65_l, src87_l, src109_l, filt0,
                                     filt1, filt2, filt3);

            FUNC1(dst0, dst1, dst2, dst3, weight_vec,
                                           offset_vec, rnd_vec, dst0, dst1,
                                           dst2, dst3);
            FUNC1(dst4, dst5, dst6, dst7, weight_vec,
                                           offset_vec, rnd_vec, dst4, dst5,
                                           dst6, dst7);
            FUNC9(dst1, dst0, dst3, dst2, out0, out1);
            FUNC9(dst5, dst4, dst7, dst6, out2, out3);
            FUNC11(out0, out1, out2, out3, dst_tmp, dst_stride);
            dst_tmp += (4 * dst_stride);

            src0 = src4;
            src1 = src5;
            src2 = src6;
            src3 = src7;
            src4 = src8;
            src5 = src9;
            src6 = src10;
        }

        src += 16;
        dst += 16;
    }
}