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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src10_r, src32_r, src54_r, src76_r;
    v16i8 src21_r, src43_r, src65_r, src87_r;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filt0, filt1;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= src_stride;

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC15(weight);
    rnd_vec = FUNC15(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC14(weight);
    offset_vec = FUNC14(offset);
    denom_vec = FUNC14(rnd_val);

    weight_vec_h = FUNC16(weight_vec_h, denom_vec);
    offset_vec = FUNC13(offset_vec, weight_vec_h);

    filter_vec = FUNC6(filter);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    FUNC4(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC5(src, src_stride, src3, src4, src5, src6, src7, src8);

    FUNC11(src0, src1, src2);
    FUNC12(src3, src4, src5, src6, src7, src8);
    FUNC3(src1, src0, src2, src1, src3, src2, src4, src3, src10_r, src21_r,
               src32_r, src43_r);
    FUNC3(src5, src4, src6, src5, src7, src6, src8, src7, src54_r, src65_r,
               src76_r, src87_r);
    dst0 = FUNC0(src10_r, src32_r, filt0, filt1);
    dst1 = FUNC0(src21_r, src43_r, filt0, filt1);
    dst2 = FUNC0(src32_r, src54_r, filt0, filt1);
    dst3 = FUNC0(src43_r, src65_r, filt0, filt1);
    dst4 = FUNC0(src54_r, src76_r, filt0, filt1);
    dst5 = FUNC0(src65_r, src87_r, filt0, filt1);
    FUNC2(dst0, dst1, dst2, dst3, weight_vec,
                                   offset_vec, rnd_vec, dst0, dst1, dst2, dst3);
    FUNC1(dst4, dst5, weight_vec, offset_vec, rnd_vec,
                                   dst4, dst5);
    FUNC7(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
    FUNC10(out0, out1, 0, 1, 0, 1, dst, dst_stride);
    FUNC9(out2, 0, 1, dst + 4 * dst_stride, dst_stride);
}