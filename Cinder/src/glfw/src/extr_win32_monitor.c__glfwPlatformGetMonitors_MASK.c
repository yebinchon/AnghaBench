#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_6__ {int cb; int StateFlags; int /*<<< orphan*/ * DeviceName; } ;
typedef  scalar_t__ GLFWbool ;
typedef  size_t DWORD ;
typedef  TYPE_1__ DISPLAY_DEVICEW ;

/* Variables and functions */
 int DISPLAY_DEVICE_ACTIVE ; 
 int DISPLAY_DEVICE_PRIMARY_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ GLFW_FALSE ; 
 scalar_t__ GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **,int) ; 

_GLFWmonitor** FUNC5(int* count)
{
    int found = 0;
    DWORD adapterIndex, displayIndex, primaryIndex = 0;
    DISPLAY_DEVICEW adapter, display;
    GLFWbool hasDisplays = GLFW_FALSE;
    _GLFWmonitor** monitors = NULL;

    *count = 0;

    // HACK: Check if any active adapters have connected displays
    //       If not, this is a headless system or a VMware guest

    for (adapterIndex = 0;  ;  adapterIndex++)
    {
        FUNC1(&adapter, sizeof(DISPLAY_DEVICEW));
        adapter.cb = sizeof(DISPLAY_DEVICEW);

        if (!FUNC0(NULL, adapterIndex, &adapter, 0))
            break;

        if (!(adapter.StateFlags & DISPLAY_DEVICE_ACTIVE))
            continue;

        FUNC1(&display, sizeof(DISPLAY_DEVICEW));
        display.cb = sizeof(DISPLAY_DEVICEW);

        if (FUNC0(adapter.DeviceName, 0, &display, 0))
        {
            hasDisplays = GLFW_TRUE;
            break;
        }
    }

    for (adapterIndex = 0;  ;  adapterIndex++)
    {
        FUNC1(&adapter, sizeof(DISPLAY_DEVICEW));
        adapter.cb = sizeof(DISPLAY_DEVICEW);

        if (!FUNC0(NULL, adapterIndex, &adapter, 0))
            break;

        if (!(adapter.StateFlags & DISPLAY_DEVICE_ACTIVE))
            continue;

        if (adapter.StateFlags & DISPLAY_DEVICE_PRIMARY_DEVICE)
            primaryIndex = found;

        if (hasDisplays)
        {
            for (displayIndex = 0;  ;  displayIndex++)
            {
                FUNC1(&display, sizeof(DISPLAY_DEVICEW));
                display.cb = sizeof(DISPLAY_DEVICEW);

                if (!FUNC0(adapter.DeviceName, displayIndex, &display, 0))
                    break;

                found++;
                monitors = FUNC4(monitors, sizeof(_GLFWmonitor*) * found);
                monitors[found - 1] = FUNC3(&adapter, &display);
            }
        }
        else
        {
            found++;
            monitors = FUNC4(monitors, sizeof(_GLFWmonitor*) * found);
            monitors[found - 1] = FUNC3(&adapter, NULL);
        }
    }

    FUNC2(monitors[0], monitors[primaryIndex]);

    *count = found;
    return monitors;
}