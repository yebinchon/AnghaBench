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
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_JOYSTICK_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int) ; 

int FUNC3(int joy)
{
    FUNC0(0);

    if (joy < 0 || joy > GLFW_JOYSTICK_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid joystick");
        return 0;
    }

    return FUNC2(joy);
}