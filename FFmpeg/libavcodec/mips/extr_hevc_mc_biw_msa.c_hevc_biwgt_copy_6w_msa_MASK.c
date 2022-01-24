#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(uint8_t *src0_ptr,
                                   int32_t src_stride,
                                   int16_t *src1_ptr,
                                   int32_t src2_stride,
                                   uint8_t *dst,
                                   int32_t dst_stride,
                                   int32_t height,
                                   int32_t weight0,
                                   int32_t weight1,
                                   int32_t offset0,
                                   int32_t offset1,
                                   int32_t rnd_val)
{
    uint32_t loop_cnt;
    int32_t offset, weight;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 out0, out1;
    v16i8 zero = { 0 };
    v16i8 src0 = { 0 }, src1 = { 0 };
    v8i16 in0, in1, in2, in3;
    v8i16 dst0, dst1, dst2, dst3;
    v4i32 offset_vec, weight_vec, rnd_vec;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    weight_vec = FUNC9(weight);
    offset_vec = FUNC9(offset);
    rnd_vec = FUNC9(rnd_val + 1);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src0_ptr, src_stride, tp0, tp1, tp2, tp3);
        src0_ptr += (4 * src_stride);
        FUNC2(tp0, tp1, src0);
        FUNC2(tp2, tp3, src1);
        FUNC4(src1_ptr, src2_stride, in0, in1, in2, in3);
        src1_ptr += (4 * src2_stride);
        FUNC1(zero, src0, dst0, dst1);
        FUNC1(zero, src1, dst2, dst3);
        FUNC6(dst0, dst1, dst2, dst3, 6);
        FUNC0(dst0, dst1, dst2, dst3,
                                    in0, in1, in2, in3,
                                    weight_vec, rnd_vec, offset_vec,
                                    dst0, dst1, dst2, dst3);
        FUNC5(dst1, dst0, dst3, dst2, out0, out1);
        FUNC8(out0, 0, 2, dst, dst_stride);
        FUNC7(out0, 2, 6, dst + 4, dst_stride);
        FUNC8(out1, 0, 2, dst + 2 * dst_stride, dst_stride);
        FUNC7(out1, 2, 6, dst + 2 * dst_stride + 4, dst_stride);
        dst += (4 * dst_stride);
    }
}