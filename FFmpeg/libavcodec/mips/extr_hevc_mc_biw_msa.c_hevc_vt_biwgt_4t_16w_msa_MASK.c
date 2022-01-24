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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t height,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    uint32_t loop_cnt;
    int32_t offset, weight, constant;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 in0, in1, in2, in3;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v16i8 src10_l, src32_l, src21_l, src43_l;
    v8i16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt0, filt1;
    v8i16 filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= src_stride;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = FUNC13(offset);
    weight_vec = FUNC13(weight);
    rnd_vec = FUNC13(rnd_val + 1);

    filter_vec = FUNC6(filter);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    FUNC5(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC12(src0, src1, src2);
    FUNC3(src1, src0, src2, src1, src10_r, src21_r);
    FUNC2(src1, src0, src2, src1, src10_l, src21_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC4(src0_ptr, src_stride, src3, src4);
        src0_ptr += (2 * src_stride);
        FUNC7(src1_ptr, src2_stride, in0, in1);
        FUNC7(src1_ptr + 8, src2_stride, in2, in3);
        src1_ptr += (2 * src2_stride);
        FUNC11(src3, src4);
        FUNC3(src3, src2, src4, src3, src32_r, src43_r);
        FUNC2(src3, src2, src4, src3, src32_l, src43_l);

        tmp0 = FUNC1(src10_r, src32_r, filt0, filt1);
        tmp1 = FUNC1(src21_r, src43_r, filt0, filt1);
        tmp2 = FUNC1(src10_l, src32_l, filt0, filt1);
        tmp3 = FUNC1(src21_l, src43_l, filt0, filt1);

        FUNC0(tmp0, tmp1, tmp2, tmp3,
                           in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec,
                           tmp0, tmp1, tmp2, tmp3);
        FUNC8(tmp2, tmp0, tmp3, tmp1, tmp0, tmp1);
        FUNC10(tmp0, tmp1, dst, dst_stride);
        dst += (2 * dst_stride);
        FUNC4(src0_ptr, src_stride, src5, src2);
        src0_ptr += (2 * src_stride);

        FUNC7(src1_ptr, src2_stride, in0, in1);
        FUNC7(src1_ptr + 8, src2_stride, in2, in3);
        src1_ptr += (2 * src2_stride);
        FUNC11(src5, src2);
        FUNC3(src5, src4, src2, src5, src10_r, src21_r);
        FUNC2(src5, src4, src2, src5, src10_l, src21_l);

        tmp0 = FUNC1(src32_r, src10_r, filt0, filt1);
        tmp1 = FUNC1(src43_r, src21_r, filt0, filt1);
        tmp2 = FUNC1(src32_l, src10_l, filt0, filt1);
        tmp3 = FUNC1(src43_l, src21_l, filt0, filt1);
        FUNC0(tmp0, tmp1, tmp2, tmp3,
                           in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec,
                           tmp0, tmp1, tmp2, tmp3);

        FUNC8(tmp2, tmp0, tmp3, tmp1, tmp0, tmp1);
        FUNC10(tmp0, tmp1, dst, dst_stride);
        dst += (2 * dst_stride);
    }
}