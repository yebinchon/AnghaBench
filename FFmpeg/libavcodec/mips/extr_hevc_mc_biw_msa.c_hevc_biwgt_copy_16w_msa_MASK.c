#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_22__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(uint8_t *src0_ptr,
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
    v16u8 out0, out1, out2, out3;
    v16i8 zero = { 0 };
    v16i8 src0, src1, src2, src3;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v4i32 offset_vec, weight_vec, rnd_vec;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    offset_vec = FUNC8(offset);
    weight_vec = FUNC8(weight);
    rnd_vec = FUNC8(rnd_val + 1);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src0_ptr, src_stride, src0, src1, src2, src3);
        src0_ptr += (4 * src_stride);
        FUNC4(src1_ptr, src2_stride, in0, in1, in2, in3);
        FUNC4(src1_ptr + 8, src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);
        FUNC2(zero, src0, zero, src1, zero, src2, zero, src3, tmp0, tmp1,
                   tmp2, tmp3);
        FUNC1(zero, src0, zero, src1, zero, src2, zero, src3, tmp4, tmp5,
                   tmp6, tmp7);
        FUNC6(tmp0, tmp1, tmp2, tmp3, 6);
        FUNC6(tmp4, tmp5, tmp6, tmp7, 6);
        FUNC0(tmp0, tmp1, tmp4, tmp5, in0, in1, in4, in5,
                                    weight_vec, rnd_vec, offset_vec, tmp0, tmp1,
                                    tmp4, tmp5);
        FUNC0(tmp2, tmp3, tmp6, tmp7, in2, in3, in6, in7,
                                    weight_vec, rnd_vec, offset_vec, tmp2, tmp3,
                                    tmp6, tmp7);
        FUNC5(tmp4, tmp0, tmp5, tmp1, out0, out1);
        FUNC5(tmp6, tmp2, tmp7, tmp3, out2, out3);
        FUNC7(out0, out1, out2, out3, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}