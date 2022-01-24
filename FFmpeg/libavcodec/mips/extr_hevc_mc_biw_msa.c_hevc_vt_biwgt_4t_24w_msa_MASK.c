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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(uint8_t *src0_ptr,
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
    v16i8 src6, src7, src8, src9, src10, src11;
    v8i16 in0, in1, in2, in3, in4, in5;
    v16i8 src10_r, src32_r, src76_r, src98_r;
    v16i8 src10_l, src32_l, src21_l, src43_l;
    v16i8 src21_r, src43_r, src87_r, src109_r;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
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

    offset_vec = FUNC15(offset);
    weight_vec = FUNC15(weight);
    rnd_vec = FUNC15(rnd_val + 1);

    filter_vec = FUNC7(filter);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    /* 16width */
    FUNC6(src0_ptr, src_stride, src0, src1, src2);
    FUNC14(src0, src1, src2);
    FUNC4(src1, src0, src2, src1, src10_r, src21_r);
    FUNC3(src1, src0, src2, src1, src10_l, src21_l);
    /* 8width */
    FUNC6(src0_ptr + 16, src_stride, src6, src7, src8);
    src0_ptr += (3 * src_stride);
    FUNC14(src6, src7, src8);
    FUNC4(src7, src6, src8, src7, src76_r, src87_r);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        /* 16width */
        FUNC5(src0_ptr, src_stride, src3, src4);
        FUNC8(src1_ptr, src2_stride, in0, in1);
        FUNC8(src1_ptr + 8, src2_stride, in2, in3);
        FUNC13(src3, src4);
        FUNC4(src3, src2, src4, src3, src32_r, src43_r);
        FUNC3(src3, src2, src4, src3, src32_l, src43_l);

        /* 8width */
        FUNC5(src0_ptr + 16, src_stride, src9, src10);
        src0_ptr += (2 * src_stride);
        FUNC8(src1_ptr + 16, src2_stride, in4, in5);
        src1_ptr += (2 * src2_stride);
        FUNC13(src9, src10);
        FUNC4(src9, src8, src10, src9, src98_r, src109_r);
        /* 16width */
        tmp0 = FUNC2(src10_r, src32_r, filt0, filt1);
        tmp4 = FUNC2(src10_l, src32_l, filt0, filt1);
        tmp1 = FUNC2(src21_r, src43_r, filt0, filt1);
        tmp5 = FUNC2(src21_l, src43_l, filt0, filt1);
        /* 8width */
        tmp2 = FUNC2(src76_r, src98_r, filt0, filt1);
        tmp3 = FUNC2(src87_r, src109_r, filt0, filt1);
        /* 16width */
        FUNC1(tmp0, tmp1, tmp4, tmp5,
                           in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec,
                           tmp0, tmp1, tmp4, tmp5);
        /* 8width */
        FUNC0(tmp2, tmp3, in4, in5,
                           weight_vec, rnd_vec, offset_vec,
                           tmp2, tmp3);
        /* 16width */
        FUNC9(tmp4, tmp0, tmp5, tmp1, tmp0, tmp1);
        /* 8width */
        tmp2 = (v8i16) FUNC16((v16i8) tmp3, (v16i8) tmp2);
        FUNC12(tmp0, tmp1, dst, dst_stride);
        FUNC11(tmp2, 0, 1, dst + 16, dst_stride);
        dst += (2 * dst_stride);

        /* 16width */
        FUNC5(src0_ptr, src_stride, src5, src2);
        FUNC8(src1_ptr, src2_stride, in0, in1);
        FUNC8(src1_ptr + 8, src2_stride, in2, in3);
        FUNC13(src5, src2);
        FUNC4(src5, src4, src2, src5, src10_r, src21_r);
        FUNC3(src5, src4, src2, src5, src10_l, src21_l);
        /* 8width */
        FUNC5(src0_ptr + 16, src_stride, src11, src8);
        src0_ptr += (2 * src_stride);
        FUNC8(src1_ptr + 16, src2_stride, in4, in5);
        src1_ptr += (2 * src2_stride);
        FUNC13(src11, src8);
        FUNC4(src11, src10, src8, src11, src76_r, src87_r);
        /* 16width */
        tmp0 = FUNC2(src32_r, src10_r, filt0, filt1);
        tmp4 = FUNC2(src32_l, src10_l, filt0, filt1);
        tmp1 = FUNC2(src43_r, src21_r, filt0, filt1);
        tmp5 = FUNC2(src43_l, src21_l, filt0, filt1);
        /* 8width */
        tmp2 = FUNC2(src98_r, src76_r, filt0, filt1);
        tmp3 = FUNC2(src109_r, src87_r, filt0, filt1);
        /* 16width */
        FUNC1(tmp0, tmp1, tmp4, tmp5,
                           in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec,
                           tmp0, tmp1, tmp4, tmp5);
        /* 8width */
        FUNC0(tmp2, tmp3, in4, in5,
                           weight_vec, rnd_vec, offset_vec,
                           tmp2, tmp3);
        /* 16width */
        FUNC9(tmp4, tmp0, tmp5, tmp1, tmp0, tmp1);

        /* 8width */
        tmp2 = (v8i16) FUNC16((v16i8) tmp3, (v16i8) tmp2);
        FUNC12(tmp0, tmp1, dst, dst_stride);
        FUNC11(tmp2, 0, 1, dst + 16, dst_stride);
        dst += (2 * dst_stride);
    }
}