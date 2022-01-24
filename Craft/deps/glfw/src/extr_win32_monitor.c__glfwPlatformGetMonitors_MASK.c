#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  publicDisplayName; int /*<<< orphan*/  publicAdapterName; int /*<<< orphan*/  displayName; int /*<<< orphan*/  adapterName; int /*<<< orphan*/  modesPruned; } ;
struct TYPE_13__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
struct TYPE_14__ {int cb; int StateFlags; int /*<<< orphan*/ * DeviceName; int /*<<< orphan*/  DeviceString; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ DISPLAY_DEVICEW ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int DISPLAY_DEVICE_ACTIVE ; 
 int DISPLAY_DEVICE_MODESPRUNED ; 
 int DISPLAY_DEVICE_PRIMARY_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZSIZE ; 
 int /*<<< orphan*/  VERTSIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_2__** FUNC11 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

_GLFWmonitor** FUNC13(int* count)
{
    int found = 0;
    _GLFWmonitor** monitors = NULL;
    DWORD adapterIndex, displayIndex;

    *count = 0;

    for (adapterIndex = 0;  ;  adapterIndex++)
    {
        DISPLAY_DEVICEW adapter;

        FUNC5(&adapter, sizeof(DISPLAY_DEVICEW));
        adapter.cb = sizeof(DISPLAY_DEVICEW);

        if (!FUNC2(NULL, adapterIndex, &adapter, 0))
            break;

        if (!(adapter.StateFlags & DISPLAY_DEVICE_ACTIVE))
            continue;

        for (displayIndex = 0;  ;  displayIndex++)
        {
            DISPLAY_DEVICEW display;
            _GLFWmonitor* monitor;
            char* name;
            HDC dc;

            FUNC5(&display, sizeof(DISPLAY_DEVICEW));
            display.cb = sizeof(DISPLAY_DEVICEW);

            if (!FUNC2(adapter.DeviceName, displayIndex, &display, 0))
                break;

            name = FUNC8(display.DeviceString);
            if (!name)
            {
                FUNC9(GLFW_PLATFORM_ERROR,
                                "Win32: Failed to convert string to UTF-8");
                continue;
            }

            dc = FUNC0(L"DISPLAY", adapter.DeviceName, NULL, NULL);

            monitor = FUNC7(name,
                                        FUNC3(dc, HORZSIZE),
                                        FUNC3(dc, VERTSIZE));

            FUNC1(dc);
            FUNC10(name);

            if (adapter.StateFlags & DISPLAY_DEVICE_MODESPRUNED)
                monitor->win32.modesPruned = GL_TRUE;

            FUNC12(monitor->win32.adapterName, adapter.DeviceName);
            FUNC12(monitor->win32.displayName, display.DeviceName);

            FUNC4(CP_UTF8, 0,
                                adapter.DeviceName, -1,
                                monitor->win32.publicAdapterName,
                                sizeof(monitor->win32.publicAdapterName),
                                NULL, NULL);

            FUNC4(CP_UTF8, 0,
                                display.DeviceName, -1,
                                monitor->win32.publicDisplayName,
                                sizeof(monitor->win32.publicDisplayName),
                                NULL, NULL);

            found++;
            monitors = FUNC11(monitors, sizeof(_GLFWmonitor*) * found);
            monitors[found - 1] = monitor;

            if (adapter.StateFlags & DISPLAY_DEVICE_PRIMARY_DEVICE &&
                displayIndex == 0)
            {
                FUNC6(monitors[0], monitors[found - 1]);
            }
        }
    }

    *count = found;
    return monitors;
}