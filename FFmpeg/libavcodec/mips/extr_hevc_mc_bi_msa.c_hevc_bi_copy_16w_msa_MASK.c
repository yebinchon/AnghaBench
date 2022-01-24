#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(uint8_t *src0_ptr,
                                 int32_t src_stride,
                                 int16_t *src1_ptr,
                                 int32_t src2_stride,
                                 uint8_t *dst,
                                 int32_t dst_stride,
                                 int32_t height)
{
    uint32_t loop_cnt;
    v16u8 out0, out1, out2, out3;
    v16i8 src0, src1, src2, src3;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 dst0_r, dst1_r, dst2_r, dst3_r, dst0_l, dst1_l, dst2_l, dst3_l;
    v16i8 zero = { 0 };

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC2(src0_ptr, src_stride, src0, src1, src2, src3);
        src0_ptr += (4 * src_stride);
        FUNC3(src1_ptr, src2_stride, in0, in1, in2, in3);
        FUNC3(src1_ptr + 8, src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);
        FUNC1(zero, src0, dst0_r, dst0_l);
        FUNC1(zero, src1, dst1_r, dst1_l);
        FUNC1(zero, src2, dst2_r, dst2_l);
        FUNC1(zero, src3, dst3_r, dst3_l);
        FUNC5(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        FUNC5(dst0_l, dst1_l, dst2_l, dst3_l, 6);
        FUNC0(in0, in1, in4, in5, dst0_r, dst1_r, dst0_l,
                                   dst1_l, 7, dst0_r, dst1_r, dst0_l, dst1_l);
        FUNC0(in2, in3, in6, in7, dst2_r, dst3_r, dst2_l,
                                   dst3_l, 7, dst2_r, dst3_r, dst2_l, dst3_l);
        FUNC4(dst0_l, dst0_r, dst1_l, dst1_r, out0, out1);
        FUNC4(dst2_l, dst2_r, dst3_l, dst3_r, out2, out3);
        FUNC6(out0, out1, out2, out3, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}