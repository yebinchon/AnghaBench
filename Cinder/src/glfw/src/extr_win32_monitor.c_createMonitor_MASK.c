#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  publicDisplayName; int /*<<< orphan*/  displayName; int /*<<< orphan*/  publicAdapterName; int /*<<< orphan*/  adapterName; int /*<<< orphan*/  modesPruned; } ;
struct TYPE_9__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
struct TYPE_10__ {int StateFlags; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  DeviceString; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_3__ DISPLAY_DEVICEW ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int DISPLAY_DEVICE_MODESPRUNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZSIZE ; 
 int /*<<< orphan*/  VERTSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static _GLFWmonitor* FUNC9(DISPLAY_DEVICEW* adapter,
                                   DISPLAY_DEVICEW* display)
{
    _GLFWmonitor* monitor;
    char* name;
    HDC dc;

    if (display)
        name = FUNC5(display->DeviceString);
    else
        name = FUNC5(adapter->DeviceString);
    if (!name)
    {
        FUNC6(GLFW_PLATFORM_ERROR,
                        "Win32: Failed to convert string to UTF-8");
        return NULL;
    }

    dc = FUNC0(L"DISPLAY", adapter->DeviceName, NULL, NULL);

    monitor = FUNC4(name,
                                FUNC2(dc, HORZSIZE),
                                FUNC2(dc, VERTSIZE));

    FUNC1(dc);
    FUNC7(name);

    if (adapter->StateFlags & DISPLAY_DEVICE_MODESPRUNED)
        monitor->win32.modesPruned = GLFW_TRUE;

    FUNC8(monitor->win32.adapterName, adapter->DeviceName);
    FUNC3(CP_UTF8, 0,
                        adapter->DeviceName, -1,
                        monitor->win32.publicAdapterName,
                        sizeof(monitor->win32.publicAdapterName),
                        NULL, NULL);

    if (display)
    {
        FUNC8(monitor->win32.displayName, display->DeviceName);
        FUNC3(CP_UTF8, 0,
                            display->DeviceName, -1,
                            monitor->win32.publicDisplayName,
                            sizeof(monitor->win32.publicDisplayName),
                            NULL, NULL);
    }

    return monitor;
}