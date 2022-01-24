#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int v4i32 ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 

void FUNC12(uint8_t *dest, ptrdiff_t linesize, int16_t *block)
{
    v4i32 in0, in1, in2, in3, in4, in5, in6, in7;
    v4i32 t1, t2, t3, t4, t5, t6, t7, t8;
    v4i32 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v16i8 zero_m = { 0 };
    v4i32 cnst_17 = {17, 17, 17, 17};
    v4i32 cnst_22 = {22, 22, 22, 22};
    v4i32 cnst_10 = {10, 10, 10, 10};
    v4i32 cnst_12 = {12, 12, 12, 12};
    v4i32 cnst_64 = {64, 64, 64, 64};
    v4i32 cnst_16 = {16, 16, 16, 16};
    v4i32 cnst_15 = {15, 15, 15, 15};
    v4i32 cnst_4 = {4, 4, 4, 4};
    v4i32 cnst_6 = {6, 6, 6, 6};
    v4i32 cnst_9 = {9, 9, 9, 9};

    FUNC5(block, 8, t1, t2, t3, t4);
    FUNC11(t1, in0, in4);
    FUNC11(t2, in1, in5);
    FUNC11(t3, in2, in6);
    FUNC11(t4, in3, in7);
    FUNC10(in0, in1, in2, in3, in0, in1, in2, in3);
    FUNC10(in4, in5, in6, in7, in4, in5, in6, in7);
    // First loop
    t1 = cnst_12 * (in0 + in4) + cnst_4;
    t2 = cnst_12 * (in0 - in4) + cnst_4;
    t3 = cnst_16 * in2 + cnst_6 * in6;
    t4 = cnst_6 * in2 - cnst_16 * in6;
    t5 = t1 + t3, t6 = t2 + t4;
    t7 = t2 - t4, t8 = t1 - t3;
    t1 = cnst_16 * in1 + cnst_15 * in3 + cnst_9 * in5 + cnst_4 * in7;
    t2 = cnst_15 * in1 - cnst_4 * in3 - cnst_16 * in5 - cnst_9 * in7;
    t3 = cnst_9 * in1 - cnst_16 * in3 + cnst_4 * in5 + cnst_15 * in7;
    t4 = cnst_4 * in1 - cnst_9 * in3 + cnst_15 * in5 - cnst_16 * in7;
    in0 = (t5 + t1) >> 3;
    in1 = (t6 + t2) >> 3;
    in2 = (t7 + t3) >> 3;
    in3 = (t8 + t4) >> 3;
    in4 = (t8 - t4) >> 3;
    in5 = (t7 - t3) >> 3;
    in6 = (t6 - t2) >> 3;
    in7 = (t5 - t1) >> 3;
    FUNC10(in0, in1, in2, in3, in0, in1, in2, in3);
    FUNC10(in4, in5, in6, in7, in4, in5, in6, in7);
    FUNC7(in4, in0, in5, in1, in6, in2, in7, in3, t1, t2, t3, t4);
    FUNC9(t1, t2, t3, t4, block, 8);
    // Second loop
    FUNC5(dest, linesize, dst0, dst1, dst2, dst3);
    FUNC3(zero_m, dst0, zero_m, dst1, zero_m, dst2, zero_m, dst3,
               dst0, dst1, dst2, dst3);
    FUNC2(zero_m, dst0, zero_m, dst1, zero_m, dst2, zero_m, dst3,
               dst4, dst5, dst6, dst7);
    FUNC4(zero_m, dst0, zero_m, dst1, zero_m, dst2, zero_m, dst3,
               dst0, dst1, dst2, dst3);
    // Right part
    t1 = cnst_17 * (in0 + in2) + cnst_64;
    t2 = cnst_17 * (in0 - in2) + cnst_64;
    t3 = cnst_22 * in1 + cnst_10 * in3;
    t4 = cnst_22 * in3 - cnst_10 * in1;
    in0 = (t1 + t3) >> 7;
    in1 = (t2 - t4) >> 7;
    in2 = (t2 + t4) >> 7;
    in3 = (t1 - t3) >> 7;
    FUNC0(in0, dst0, in1, dst1, in2, dst2, in3, dst3, in0, in1, in2, in3);
    FUNC1(in0, in1, in2, in3);
    // Left part
    t5 = cnst_17 * (in4 + in6) + cnst_64;
    t6 = cnst_17 * (in4 - in6) + cnst_64;
    t7 = cnst_22 * in5 + cnst_10 * in7;
    t8 = cnst_22 * in7 - cnst_10 * in5;
    in4 = (t5 + t7) >> 7;
    in5 = (t6 - t8) >> 7;
    in6 = (t6 + t8) >> 7;
    in7 = (t5 - t7) >> 7;
    FUNC0(in4, dst4, in5, dst5, in6, dst6, in7, dst7, in4, in5, in6, in7);
    FUNC1(in4, in5, in6, in7);
    FUNC7(in4, in0, in5, in1, in6, in2, in7, in3, in0, in1, in2, in3);
    FUNC6(in1, in0, in3, in2, in0, in1);
    FUNC8(in0, in1, 0, 1, 0, 1, dest, linesize);
}