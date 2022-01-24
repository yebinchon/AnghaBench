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
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 

void FUNC3(double time)
{
    FUNC0();

    if (time != time || time < 0.0 || time > 18446744073.0)
    {
        FUNC1(GLFW_INVALID_VALUE, "Invalid time");
        return;
    }

    FUNC2(time);
}