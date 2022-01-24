#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int16_t *coeffs)
{
    v8i16 in0, in1;
    v4i32 in_r0, in_l0, in_r1, in_l1;
    v4i32 sum0, sum1, sum2, sum3;
    v8i16 zeros = { 0 };

    FUNC3(coeffs, 8, in0, in1);
    FUNC1(zeros, in0, in_r0, in_l0);
    FUNC1(zeros, in1, in_r1, in_l1);

    FUNC0(in_r0, in_l0, in_r1, in_l1, sum0, sum1, sum2, sum3, 7);
    FUNC6(sum0, sum1, sum2, sum3, in_r0, in_l0, in_r1, in_l1);
    FUNC0(in_r0, in_l0, in_r1, in_l1, sum0, sum1, sum2, sum3, 12);

    /* Pack and transpose */
    FUNC4(sum2, sum0, sum3, sum1, in0, in1);
    FUNC1(in1, in0, sum0, sum1);
    FUNC2(sum1, sum0, in0, in1);

    FUNC5(in0, in1, coeffs, 8);
}