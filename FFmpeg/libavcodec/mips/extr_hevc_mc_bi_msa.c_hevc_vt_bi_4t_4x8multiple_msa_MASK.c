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
typedef  int v8i16 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC18(uint8_t *src0_ptr,
                                          int32_t src_stride,
                                          int16_t *src1_ptr,
                                          int32_t src2_stride,
                                          uint8_t *dst,
                                          int32_t dst_stride,
                                          const int8_t *filter,
                                          int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 src6, src7, src8, src9;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v16i8 src2110, src4332, src6554, src8776;
    v8i16 dst10, dst32, dst54, dst76;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= src_stride;

    const_vec = FUNC16(128);
    const_vec <<= 6;

    filter_vec = FUNC9(filter);
    FUNC12(filter_vec, 0, 1, filt0, filt1);

    FUNC7(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) FUNC15((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) FUNC17((v16u8) src2110, 128);

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC8(src0_ptr, src_stride, src3, src4, src5, src6, src7, src8);
        src0_ptr += (6 * src_stride);
        FUNC10(src1_ptr, src2_stride, in0, in1, in2, in3, in4, in5, in6, in7);
        src1_ptr += (8 * src2_stride);
        FUNC4(in1, in0, in3, in2, in0, in1);
        FUNC4(in5, in4, in7, in6, in2, in3);
        FUNC3(src3, src2, src4, src3, src5, src4, src6, src5,
                   src32_r, src43_r, src54_r, src65_r);
        FUNC2(src7, src6, src8, src7, src76_r, src87_r);
        FUNC5(src43_r, src32_r, src65_r, src54_r, src87_r, src76_r,
                   src4332, src6554, src8776);
        FUNC14(src4332, src6554, src8776);

        dst10 = const_vec;
        FUNC0(src2110, src4332, filt0, filt1, dst10, dst10);
        dst32 = const_vec;
        FUNC0(src4332, src6554, filt0, filt1, dst32, dst32);
        dst54 = const_vec;
        FUNC0(src6554, src8776, filt0, filt1, dst54, dst54);

        FUNC6(src0_ptr, src_stride, src9, src2);
        src0_ptr += (2 * src_stride);
        FUNC2(src9, src8, src2, src9, src98_r, src109_r);
        src2110 = (v16i8) FUNC15((v2i64) src109_r, (v2i64) src98_r);
        src2110 = (v16i8) FUNC17((v16u8) src2110, 128);
        dst76 = const_vec;
        FUNC0(src8776, src2110, filt0, filt1, dst76, dst76);

        FUNC1(in0, in1, in2, in3,
                          dst10, dst32, dst54, dst76, 7,
                          dst10, dst32, dst54, dst76);

        FUNC11(dst32, dst10, dst76, dst54, dst10, dst54);
        FUNC13(dst10, dst54, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);
    }
}