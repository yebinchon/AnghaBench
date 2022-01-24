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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

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
    int32_t offset, weight, constant;
    v8i16 filt0, filt1;
    v16i8 src0, src1;
    v8i16 in0, in1;
    v16i8 mask0 = FUNC3(&ff_hevc_mask_arr[16]);
    v16i8 mask1, vec0, vec1;
    v8i16 dst0;
    v4i32 dst0_r, dst0_l;
    v8i16 out0, filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= 1;

    filter_vec = FUNC5(filter);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = FUNC13(offset);
    weight_vec = FUNC13(weight);
    rnd_vec = FUNC13(rnd_val + 1);

    FUNC4(src0_ptr, src_stride, src0, src1);
    FUNC6(src1_ptr, src2_stride, in0, in1);
    in0 = (v8i16) FUNC14((v2i64) in1, (v2i64) in0);
    FUNC11(src0, src1);

    FUNC10(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    dst0 = FUNC1(vec0, vec1, filt0, filt1);

    FUNC2(dst0, in0, dst0_r, dst0_l);
    dst0_r = FUNC12(offset_vec, (v8i16) dst0_r, (v8i16) weight_vec);
    dst0_l = FUNC12(offset_vec, (v8i16) dst0_l, (v8i16) weight_vec);
    FUNC8(dst0_r, dst0_l, rnd_vec);
    out0 = FUNC16((v8i16) dst0_l, (v8i16) dst0_r);
    FUNC0(out0);
    out0 = (v8i16) FUNC15((v16i8) out0, (v16i8) out0);
    FUNC9(out0, 0, 1, dst, dst_stride);
}