#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  adapterName; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_8__ {int size; int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_3__ GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC5(_GLFWmonitor* monitor, const GLFWgammaramp* ramp)
{
    HDC dc;
    WORD values[768];

    if (ramp->size != 256)
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "Win32: Gamma ramp size must be 256");
        return;
    }

    FUNC4(values +   0, ramp->red,   256 * sizeof(unsigned short));
    FUNC4(values + 256, ramp->green, 256 * sizeof(unsigned short));
    FUNC4(values + 512, ramp->blue,  256 * sizeof(unsigned short));

    dc = FUNC0(L"DISPLAY", monitor->win32.adapterName, NULL, NULL);
    FUNC2(dc, values);
    FUNC1(dc);
}