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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC19(uint8_t *src0_ptr,
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
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    v16i8 src10_l, src32_l, src54_l, src21_l, src43_l, src65_l;
    v16i8 src2110, src4332;
    v8i16 filt0, filt1;
    v8i16 filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= (1 * src_stride);

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = FUNC16(offset);
    weight_vec = FUNC16(weight);
    rnd_vec = FUNC16(rnd_val + 1);

    filter_vec = FUNC8(filter);
    FUNC11(filter_vec, 0, 1, filt0, filt1);

    FUNC7(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC15(src0, src1, src2);
    FUNC4(src1, src0, src2, src1, src10_r, src21_r);
    FUNC3(src1, src0, src2, src1, src10_l, src21_l);
    src2110 = (v16i8) FUNC17((v2i64) src21_l, (v2i64) src10_l);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC6(src0_ptr, src_stride, src3, src4);
        src0_ptr += (2 * src_stride);
        FUNC9(src1_ptr, src2_stride, in0, in1, in2, in3);
        FUNC9(src1_ptr + 8, src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);
        FUNC5(in5, in4, in7, in6, in4, in5);
        FUNC14(src3, src4);

        FUNC4(src3, src2, src4, src3, src32_r, src43_r);
        FUNC3(src3, src2, src4, src3, src32_l, src43_l);
        src4332 = (v16i8) FUNC17((v2i64) src43_l, (v2i64) src32_l);

        tmp0 = FUNC2(src10_r, src32_r, filt0, filt1);
        tmp1 = FUNC2(src21_r, src43_r, filt0, filt1);
        tmp4 = FUNC2(src2110, src4332, filt0, filt1);

        FUNC6(src0_ptr, src_stride, src5, src2);
        src0_ptr += (2 * src_stride);
        FUNC14(src5, src2);
        FUNC4(src5, src4, src2, src5, src10_r, src21_r);
        FUNC3(src5, src4, src2, src5, src54_l, src65_l);
        src2110 = (v16i8) FUNC17((v2i64) src65_l, (v2i64) src54_l);

        tmp2 = FUNC2(src32_r, src10_r, filt0, filt1);
        tmp3 = FUNC2(src43_r, src21_r, filt0, filt1);
        tmp5 = FUNC2(src4332, src2110, filt0, filt1);
        FUNC1(tmp0, tmp1, tmp2, tmp3,
                           in0, in1, in2, in3,
                           weight_vec, rnd_vec, offset_vec,
                           tmp0, tmp1, tmp2, tmp3);
        FUNC0(tmp4, tmp5, in4, in5,
                           weight_vec, rnd_vec, offset_vec,
                           tmp4, tmp5);

        FUNC10(tmp1, tmp0, tmp3, tmp2, tmp0, tmp1);
        tmp2 = (v8i16) FUNC18((v16i8) tmp5, (v16i8) tmp4);
        FUNC12(tmp0, tmp1, 0, 1, 0, 1, dst, dst_stride);
        FUNC13(tmp2, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);
    }
}