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
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static float FUNC4(float v, float g)
{
    if (g == 1.0f)
        return v;
    if (g == 2.0f)
        return FUNC3(v);
    if (g == 3.0f)
        return FUNC0(v);
    if (g == 4.0f)
        return FUNC3(FUNC3(v));
    return FUNC1(FUNC2(v) / g);
}