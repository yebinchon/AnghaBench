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
 float const FUNC0 (float const) ; 
 float const FUNC1 (float const) ; 

__attribute__((used)) static float FUNC2(const float value, const float min, const float max)
{
    if (value < min)
        return min;
    if (value > max)
        return max;

    {
        const float b = FUNC1(max / min) / (max - min);
        const float a = max / FUNC0(max * b);

        return FUNC1(value / a) / b;
    }
}