#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (float,int /*<<< orphan*/ ) ; 
 float M_PI ; 
 float M_PI_2 ; 
 float M_PI_4 ; 
 float FUNC1 (float,float) ; 
 float FUNC2 (float,int,int) ; 
 float FUNC3 (float) ; 
 float FUNC4 (float) ; 
 float FUNC5 (float,float) ; 
 float FUNC6 (float) ; 

__attribute__((used)) static void FUNC7(float *x, float *y, float angle)
{
    float reference, r, a;

    if (angle == 90.f)
        return;

    reference = angle * M_PI / 180.f;
    r = FUNC5(*x, *y);
    a = FUNC1(*x, *y);

    if (FUNC4(a) <= M_PI_4)
        a *= reference / M_PI_2;
    else
        a = M_PI + 2 * (-2 * M_PI + reference) * (M_PI - FUNC4(a)) * FUNC0(a, 0) / (3 * M_PI);

    *x = FUNC2(FUNC6(a) * r, -1, 1);
    *y = FUNC2(FUNC3(a) * r, -1, 1);
}