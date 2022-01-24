#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int v8i16 ;
struct TYPE_34__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(uint8_t *src, int32_t src_stride,
                             int16_t *dst, int32_t dst_stride,
                             int32_t height)
{
    v16i8 zero = { 0 };

    if (2 == height) {
        v16i8 src0, src1;
        v8i16 in0, in1;

        FUNC2(src, src_stride, src0, src1);

        FUNC0(zero, src0, zero, src1, in0, in1);
        in0 <<= 6;
        in1 <<= 6;
        FUNC7(in0, in1, dst, dst_stride);
    } else if (4 == height) {
        v16i8 src0, src1, src2, src3;
        v8i16 in0, in1, in2, in3;

        FUNC3(src, src_stride, src0, src1, src2, src3);

        FUNC1(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0, in1, in2, in3);
        FUNC6(in0, in1, in2, in3, 6);
        FUNC8(in0, in1, in2, in3, dst, dst_stride);
    } else if (6 == height) {
        v16i8 src0, src1, src2, src3, src4, src5;
        v8i16 in0, in1, in2, in3, in4, in5;

        FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5);

        FUNC1(zero, src0, zero, src1, zero, src2, zero, src3,
                   in0, in1, in2, in3);
        FUNC0(zero, src4, zero, src5, in4, in5);
        FUNC6(in0, in1, in2, in3, 6);
        in4 <<= 6;
        in5 <<= 6;
        FUNC9(in0, in1, in2, in3, in4, in5, dst, dst_stride);
    } else if (0 == height % 8) {
        uint32_t loop_cnt;
        v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
        v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

        for (loop_cnt = (height >> 3); loop_cnt--;) {
            FUNC5(src, src_stride,
                   src0, src1, src2, src3, src4, src5, src6, src7);
            src += (8 * src_stride);

            FUNC1(zero, src0, zero, src1, zero, src2, zero, src3,
                       in0, in1, in2, in3);
            FUNC1(zero, src4, zero, src5, zero, src6, zero, src7,
                       in4, in5, in6, in7);
            FUNC6(in0, in1, in2, in3, 6);
            FUNC6(in4, in5, in6, in7, 6);
            FUNC10(in0, in1, in2, in3, in4, in5, in6, in7, dst, dst_stride);
            dst += (8 * dst_stride);
        }
    }
}