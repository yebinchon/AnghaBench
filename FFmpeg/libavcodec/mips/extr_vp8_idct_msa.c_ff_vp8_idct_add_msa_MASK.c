#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
struct TYPE_23__ {int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int /*<<< orphan*/  member_15; int /*<<< orphan*/  member_14; int /*<<< orphan*/  member_13; int /*<<< orphan*/  member_12; int /*<<< orphan*/  member_11; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC13(uint8_t *dst, int16_t input[16], ptrdiff_t stride)
{
    v8i16 input0, input1;
    v4i32 in0, in1, in2, in3, hz0, hz1, hz2, hz3, vt0, vt1, vt2, vt3;
    v4i32 res0, res1, res2, res3;
    v16i8 zero = { 0 };
    v16i8 pred0, pred1, pred2, pred3, dest0, dest1;
    v16i8 mask = { 0, 4, 8, 12, 16, 20, 24, 28, 0, 0, 0, 0, 0, 0, 0, 0 };

    /* load short vector elements of 4x4 block */
    FUNC5(input, 8, input0, input1);
    FUNC9(input0, in0, in1);
    FUNC9(input1, in2, in3);
    FUNC10(in0, in1, in2, in3, hz0, hz1, hz2, hz3);
    /* transpose the block */
    FUNC8(hz0, hz1, hz2, hz3, hz0, hz1, hz2, hz3);
    FUNC10(hz0, hz1, hz2, hz3, vt0, vt1, vt2, vt3);
    FUNC6(vt0, vt1, vt2, vt3, 3);
    /* transpose the block */
    FUNC8(vt0, vt1, vt2, vt3, vt0, vt1, vt2, vt3);
    FUNC4(dst, stride, pred0, pred1, pred2, pred3);
    FUNC2(zero, pred0, zero, pred1, zero, pred2, zero, pred3,
               res0, res1, res2, res3);
    FUNC3(zero, res0, zero, res1, zero, res2, zero, res3,
               res0, res1, res2, res3);
    FUNC0(res0, vt0, res1, vt1, res2, vt2, res3, vt3, res0, res1, res2, res3);
    FUNC1(res0, res1, res2, res3);
    FUNC11(res0, res1, res2, res3, mask, mask, dest0, dest1);
    FUNC7(dest0, 0, 1, dst, stride);
    FUNC7(dest1, 0, 1, dst + 2 * stride, stride);

    FUNC12(input, 0, 4 * 4 * sizeof(*input));
}