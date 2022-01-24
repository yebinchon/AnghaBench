#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(uint8_t *src, int32_t src_stride,
                             int16_t *dst, int32_t dst_stride,
                             int32_t height)
{
    uint32_t loop_cnt;
    v16i8 zero = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC1(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
        src += (8 * src_stride);

        FUNC0(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0, in1, in2, in3);
        FUNC0(zero, src4, zero, src5, zero, src6, zero, src7,
                   in4, in5, in6, in7);
        FUNC2(in0, in1, in2, in3, 6);
        FUNC2(in4, in5, in6, in7, 6);
        FUNC3(in0, in1, in2, in3, in4, in5, in6, in7, dst, 2 * dst_stride);
        dst += (8 * dst_stride);
    }
}