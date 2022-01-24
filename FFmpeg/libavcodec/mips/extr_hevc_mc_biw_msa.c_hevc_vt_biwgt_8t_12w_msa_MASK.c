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
typedef  int v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC22 (int,scalar_t__,scalar_t__) ; 
 int FUNC23 (int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int) ; 
 scalar_t__ FUNC26 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC27(uint8_t *src0_ptr,
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
    int32_t offset, weight;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v8i16 in0, in1, in2, in3;
    v16i8 src10_r, src32_r, src54_r, src76_r;
    v16i8 src21_r, src43_r, src65_r, src87_r;
    v8i16 tmp0, tmp1, tmp2;
    v16i8 src10_l, src32_l, src54_l, src76_l;
    v16i8 src21_l, src43_l, src65_l, src87_l;
    v16i8 src2110, src4332, src6554, src8776;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 out0, out1, out2, filter_vec;
    v4i32 dst2_r, dst2_l;
    v4i32 weight_vec, weight1_vec, offset_vec, rnd_vec, const_vec;

    src0_ptr -= (3 * src_stride);
    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    const_vec = FUNC25(128);
    const_vec <<= 6;
    offset_vec = FUNC23(offset);
    weight_vec = FUNC23(weight);
    rnd_vec = FUNC23(rnd_val + 1);
    weight1_vec = FUNC23(weight1);
    offset_vec += const_vec * weight1_vec;

    filter_vec = FUNC12(filter);
    FUNC15(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    FUNC11(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src0_ptr += (7 * src_stride);
    FUNC20(src0, src1, src2, src3, src4, src5, src6);

    FUNC8(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_r, src32_r, src54_r, src21_r);
    FUNC7(src4, src3, src6, src5, src43_r, src65_r);
    FUNC5(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_l, src32_l, src54_l, src21_l);
    FUNC4(src4, src3, src6, src5, src43_l, src65_l);
    FUNC9(src21_l, src10_l, src43_l, src32_l, src65_l, src54_l,
               src2110, src4332, src6554);

    for (loop_cnt = 8; loop_cnt--;) {
        FUNC10(src0_ptr, src_stride, src7, src8);
        src0_ptr += (2 * src_stride);
        FUNC13(src1_ptr, src2_stride, in0, in1);
        FUNC13((src1_ptr + 8), src2_stride, in2, in3);
        src1_ptr += (2 * src2_stride);
        in2 = (v8i16) FUNC24((v2i64) in3, (v2i64) in2);
        FUNC19(src7, src8);

        FUNC7(src7, src6, src8, src7, src76_r, src87_r);
        FUNC4(src7, src6, src8, src7, src76_l, src87_l);
        src8776 = (v16i8) FUNC24((v2i64) src87_l, (v2i64) src76_l);

        FUNC1(src10_r, src21_r, src2110, filt0, filt0, filt0,
                    tmp0, tmp1, tmp2);
        FUNC2(src32_r, src43_r, filt1, filt1, tmp0, tmp1);
        tmp2 = FUNC21(tmp2, src4332, (v16i8) filt1);
        FUNC2(src54_r, src65_r, filt2, filt2, tmp0, tmp1);
        tmp2 = FUNC21(tmp2, src6554, (v16i8) filt2);
        FUNC2(src76_r, src87_r, filt3, filt3, tmp0, tmp1);
        tmp2 = FUNC21(tmp2, src8776, (v16i8) filt3);

        FUNC3(tmp0, tmp1, in0, in1,
                           weight_vec, rnd_vec, offset_vec,
                           out0, out1);

        FUNC6(tmp2, in2, dst2_r, dst2_l);
        dst2_r = FUNC22(offset_vec, (v8i16) dst2_r,
                                 (v8i16) weight_vec);
        dst2_l = FUNC22(offset_vec, (v8i16) dst2_l,
                                 (v8i16) weight_vec);
        FUNC16(dst2_r, dst2_l, rnd_vec);
        out2 = FUNC26((v8i16) dst2_l, (v8i16) dst2_r);
        FUNC0(out2);
        FUNC14(out1, out0, out2, out2, out0, out2);
        FUNC17(out0, 0, 1, dst, dst_stride);
        FUNC18(out2, 0, 1, dst + 8, dst_stride);
        dst += (2 * dst_stride);

        src10_r = src32_r;
        src32_r = src54_r;
        src54_r = src76_r;
        src21_r = src43_r;
        src43_r = src65_r;
        src65_r = src87_r;
        src2110 = src4332;
        src4332 = src6554;
        src6554 = src8776;
        src6 = src8;
    }
}