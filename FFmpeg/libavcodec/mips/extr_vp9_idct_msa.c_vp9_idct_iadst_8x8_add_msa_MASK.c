#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_74__   TYPE_1__ ;

/* Type definitions */
struct TYPE_74__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v8i16 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC7(int16_t *input, uint8_t *dst,
                                       int32_t dst_stride, int32_t eob)
{
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 zero = { 0 };

    /* load vector elements of 8x8 block */
    FUNC0(input, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC2(zero, zero, zero, zero, zero, zero, zero, zero, input, 8);

    /* 1D idct8x8 */
    FUNC6(in0, in1, in2, in3, in4, in5, in6, in7,
                   in0, in1, in2, in3, in4, in5, in6, in7);
    /* columns transform */
    FUNC3(in0, in1, in2, in3, in4, in5, in6, in7,
                       in1, in6, in3, in4, in5, in2, in7, in0);
    /* 1D idct8x8 */
    FUNC5(in0, in1, in2, in3, in4, in5, in6, in7,
                    in0, in1, in2, in3, in4, in5, in6, in7);
    /* final rounding (add 2^4, divide by 2^5) and shift */
    FUNC1(in0, in1, in2, in3, 5);
    FUNC1(in4, in5, in6, in7, 5);
    /* add block and store 8x8 */
    FUNC4(dst, dst_stride, in0, in1, in2, in3);
    dst += (4 * dst_stride);
    FUNC4(dst, dst_stride, in4, in5, in6, in7);
}