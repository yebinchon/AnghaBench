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
 float FUNC0 (int /*<<< orphan*/ ,float) ; 
 int M_LN10 ; 
 float M_PI ; 
 float M_PI_2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 float FUNC2 (int,int,int) ; 
 int FUNC3 (float) ; 

__attribute__((used)) static void FUNC4(float a, float p, float *x, float *y)
{
    FUNC1(a >= -1.f && a <= 1.f);
    FUNC1(p >= 0.f && p <= M_PI);
    *x = FUNC2(a+a*FUNC0(0, p*p-M_PI_2), -1, 1);
    *y = FUNC2(FUNC3(a*M_PI_2+M_PI)*FUNC3(M_PI_2-p/M_PI)*M_LN10+1, -1, 1);
}