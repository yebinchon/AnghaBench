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
typedef  scalar_t__ v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
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
    v16i8 src0, src1, src2, src3, src4;
    v8i16 in0, in1, dst10;
    v16i8 src10_r, src32_r, src21_r, src43_r, src2110, src4332;
    v4i32 dst10_r, dst10_l;
    v8i16 filt0, filt1;
    v8i16 filter_vec, out;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= src_stride;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = FUNC12(offset);
    weight_vec = FUNC12(weight);
    rnd_vec = FUNC12(rnd_val + 1);

    filter_vec = FUNC6(filter);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    FUNC5(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC3(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) FUNC13((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) FUNC16((v16u8) src2110, 128);
    FUNC4(src0_ptr, src_stride, src3, src4);
    src0_ptr += (2 * src_stride);
    FUNC7(src1_ptr, src2_stride, in0, in1);
    src1_ptr += (2 * src2_stride);

    in0 = (v8i16) FUNC13((v2i64) in1, (v2i64) in0);
    FUNC3(src3, src2, src4, src3, src32_r, src43_r);
    src4332 = (v16i8) FUNC13((v2i64) src43_r, (v2i64) src32_r);
    src4332 = (v16i8) FUNC16((v16u8) src4332, 128);

    dst10 = FUNC1(src2110, src4332, filt0, filt1);

    FUNC2(dst10, in0, dst10_r, dst10_l);
    dst10_r = FUNC11(offset_vec, (v8i16) dst10_r, (v8i16) weight_vec);
    dst10_l = FUNC11(offset_vec, (v8i16) dst10_l, (v8i16) weight_vec);
    FUNC9(dst10_r, dst10_l, rnd_vec);
    out = FUNC15((v8i16) dst10_l, (v8i16) dst10_r);
    FUNC0(out);
    out = (v8i16) FUNC14((v16i8) out, (v16i8) out);
    FUNC10(out, 0, 1, dst, dst_stride);
}