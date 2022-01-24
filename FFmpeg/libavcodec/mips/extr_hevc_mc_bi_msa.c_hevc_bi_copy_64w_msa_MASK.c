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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
    v16i8 zero = { 0 };
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    for (loop_cnt = height; loop_cnt--;) {
        FUNC2(src0_ptr, 16, src0, src1, src2, src3);
        src0_ptr += src_stride;
        FUNC3(src1_ptr, 8, in0, in1, in2, in3, in4, in5, in6, in7);
        src1_ptr += src2_stride;

        FUNC1(zero, src0, dst0, dst1);
        FUNC1(zero, src1, dst2, dst3);
        FUNC1(zero, src2, dst4, dst5);
        FUNC1(zero, src3, dst6, dst7);
        FUNC5(dst0, dst1, dst2, dst3, 6);
        FUNC5(dst4, dst5, dst6, dst7, 6);
        FUNC0(in0, in1, in2, in3, dst0, dst1, dst2, dst3,
                                   7, dst0, dst1, dst2, dst3);
        FUNC0(in4, in5, in6, in7, dst4, dst5, dst6, dst7,
                                   7, dst4, dst5, dst6, dst7);
        FUNC4(dst1, dst0, dst3, dst2, out0, out1);
        FUNC4(dst5, dst4, dst7, dst6, out2, out3);

        FUNC6(out0, out1, out2, out3, dst, 16);
        dst += dst_stride;
    }
}