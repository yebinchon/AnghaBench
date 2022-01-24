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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC17(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    int32_t weight, offset, constant;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 in0, in1, in2, in3;
    v16i8 src10_r, src32_r, src54_r, src21_r, src43_r, src65_r;
    v16i8 src2110, src4332, src6554;
    v8i16 dst10, dst32;
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

    filter_vec = FUNC8(filter);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    FUNC6(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) FUNC14((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) FUNC16((v16u8) src2110, 128);

    FUNC7(src0_ptr, src_stride, src3, src4, src5, src6);
    src0_ptr += (4 * src_stride);
    FUNC9(src1_ptr, src2_stride, in0, in1, in2, in3);
    src1_ptr += (4 * src2_stride);
    FUNC5(in1, in0, in3, in2, in0, in1);
    FUNC3(src3, src2, src4, src3, src5, src4, src6, src5,
               src32_r, src43_r, src54_r, src65_r);
    FUNC4(src43_r, src32_r, src65_r, src54_r, src4332, src6554);
    FUNC12(src4332, src6554);

    dst10 = FUNC1(src2110, src4332, filt0, filt1);
    dst32 = FUNC1(src4332, src6554, filt0, filt1);

    FUNC0(dst10, dst32, in0, in1,
                       weight_vec, rnd_vec, offset_vec,
                       dst10, dst32);

    dst10 = (v8i16) FUNC15((v16i8) dst32, (v16i8) dst10);
    FUNC11(dst10, 0, 1, 2, 3, dst, dst_stride);
    dst += (4 * dst_stride);
}