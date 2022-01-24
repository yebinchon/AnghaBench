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
 float FUNC1 (float,int) ; 
 int /*<<< orphan*/  FUNC2 (float,float,int) ; 
 float FUNC3 (float,int /*<<< orphan*/ ,int) ; 
 float FUNC4 (float,float) ; 

__attribute__((used)) static float FUNC5(float n, float h, float s, float l)
{
    float a = s * FUNC1(l, 1. - l);
    float k = FUNC4(n + h / 30.f, 12.f);

    return FUNC3(l - a * FUNC0(FUNC2(k - 3.f, 9.f - k, 1), -1.f), 0, 1);
}