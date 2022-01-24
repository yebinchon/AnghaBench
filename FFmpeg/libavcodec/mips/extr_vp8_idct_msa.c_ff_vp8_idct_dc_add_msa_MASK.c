#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_19__ {int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int /*<<< orphan*/  member_15; int /*<<< orphan*/  member_14; int /*<<< orphan*/  member_13; int /*<<< orphan*/  member_12; int /*<<< orphan*/  member_11; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(uint8_t *dst, int16_t in_dc[16], ptrdiff_t stride)
{
    v8i16 vec;
    v8i16 res0, res1, res2, res3;
    v16i8 zero = { 0 };
    v16i8 pred0, pred1, pred2, pred3, dest0, dest1;
    v16i8 mask = { 0, 2, 4, 6, 16, 18, 20, 22, 0, 0, 0, 0, 0, 0, 0, 0 };

    vec = FUNC6(in_dc[0]);
    vec = FUNC7(vec, 3);
    FUNC3(dst, stride, pred0, pred1, pred2, pred3);
    FUNC2(zero, pred0, zero, pred1, zero, pred2, zero, pred3,
               res0, res1, res2, res3);
    FUNC0(res0, vec, res1, vec, res2, vec, res3, vec, res0, res1, res2, res3);
    FUNC1(res0, res1, res2, res3);
    FUNC5(res0, res1, res2, res3, mask, mask, dest0, dest1);
    FUNC4(dest0, 0, 1, dst, stride);
    FUNC4(dest1, 0, 1, dst + 2 * stride, stride);

    in_dc[0] = 0;
}