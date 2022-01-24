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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned char const* FUNC2 (int,int*) ; 

const unsigned char* FUNC3(int joy, int* count)
{
    *count = 0;

    FUNC0(NULL);

    if (joy < 0 || joy > GLFW_JOYSTICK_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid joystick");
        return NULL;
    }

    return FUNC2(joy, count);
}