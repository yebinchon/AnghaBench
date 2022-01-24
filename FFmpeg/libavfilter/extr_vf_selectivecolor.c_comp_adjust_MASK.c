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
 int CORRECTION_METHOD_RELATIVE ; 
 int FUNC0 (float,float const,float const) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(int scale, float value, float adjust, float k, int correction_method)
{
    const float min = -value;
    const float max = 1. - value;
    float res = (-1. - adjust) * k - adjust;
    if (correction_method == CORRECTION_METHOD_RELATIVE)
        res *= max;
    return FUNC1(FUNC0(res, min, max) * scale);
}