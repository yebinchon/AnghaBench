#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int v8i16 ;
typedef  scalar_t__ v4i32 ;
struct TYPE_27__ {int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int /*<<< orphan*/  member_15; int /*<<< orphan*/  member_14; int /*<<< orphan*/  member_13; int /*<<< orphan*/  member_12; int /*<<< orphan*/  member_11; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  size_t int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int,TYPE_1__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int,TYPE_1__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 

void FUNC10(uint8_t *first_pixel, ptrdiff_t stride,
                              int *bounding_values)
{
    v16i8 d0, d1, d2, d3, d4, d5, d6, d7;
    v8i16 c0, c1, c2, c3, c4, c5, c6, c7;
    v8i16 r0;
    v4i32 e0, e1, f0, f1, g0, g1;
    v16i8 zero = {0};
    v8i16 cnst3h = {3, 3, 3, 3, 3, 3, 3, 3},
          cnst4h = {4, 4, 4, 4, 4, 4, 4, 4};
    v16i8 mask = {0, 16, 4, 20, 8, 24, 12, 28, 0, 0, 0, 0, 0, 0, 0, 0};
    int16_t temp_16[8];
    int temp_32[8];

    FUNC4(first_pixel - 2, stride, d0, d1, d2, d3, d4, d5, d6, d7);
    FUNC2(zero, d0, zero, d1, zero, d2, zero, d3,
               c0, c1, c2, c3);
    FUNC2(zero, d4, zero, d5, zero, d6, zero, d7,
               c4, c5, c6, c7);
    FUNC8(c0, c1, c2, c3, c4, c5, c6, c7,
                       c0, c1, c2, c3, c4, c5, c6, c7);
    r0 = (c0 - c3) + (c2 - c1) * cnst3h;
    r0 += cnst4h;
    r0 = r0 >> 3;

    /* Get filter_value from bounding_values one by one */
    FUNC7(r0, temp_16);
    for (int i = 0; i < 8; i++)
        temp_32[i] = bounding_values[temp_16[i]];
    FUNC5(temp_32, 4, e0, e1);
    FUNC3(zero, c1, zero, c2, f0, g0);
    FUNC1(zero, c1, zero, c2, f1, g1);
    f0 += e0;
    f1 += e1;
    g0 -= e0;
    g1 -= e1;
    FUNC0(f0, f1, g0, g1);
    FUNC9(f0, g0, f1, g1, mask, mask, d1, d2);
    /* Final move to first_pixel */
    FUNC6(d1, 0, 1, 2, 3, first_pixel - 1, stride);
    FUNC6(d2, 0, 1, 2, 3, first_pixel - 1 + 4 * stride, stride);
}