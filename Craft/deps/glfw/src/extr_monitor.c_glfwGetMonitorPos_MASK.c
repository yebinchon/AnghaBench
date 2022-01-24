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
typedef  int /*<<< orphan*/  _GLFWmonitor ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 

void FUNC2(GLFWmonitor* handle, int* xpos, int* ypos)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;

    if (xpos)
        *xpos = 0;
    if (ypos)
        *ypos = 0;

    FUNC0();

    FUNC1(monitor, xpos, ypos);
}