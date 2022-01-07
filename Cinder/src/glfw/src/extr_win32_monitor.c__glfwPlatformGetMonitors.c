
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int _GLFWmonitor ;
struct TYPE_6__ {int cb; int StateFlags; int * DeviceName; } ;
typedef scalar_t__ GLFWbool ;
typedef size_t DWORD ;
typedef TYPE_1__ DISPLAY_DEVICEW ;


 int DISPLAY_DEVICE_ACTIVE ;
 int DISPLAY_DEVICE_PRIMARY_DEVICE ;
 scalar_t__ EnumDisplayDevicesW (int *,size_t,TYPE_1__*,int ) ;
 scalar_t__ GLFW_FALSE ;
 scalar_t__ GLFW_TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _GLFW_SWAP_POINTERS (int *,int *) ;
 int * createMonitor (TYPE_1__*,TYPE_1__*) ;
 int ** realloc (int **,int) ;

_GLFWmonitor** _glfwPlatformGetMonitors(int* count)
{
    int found = 0;
    DWORD adapterIndex, displayIndex, primaryIndex = 0;
    DISPLAY_DEVICEW adapter, display;
    GLFWbool hasDisplays = GLFW_FALSE;
    _GLFWmonitor** monitors = ((void*)0);

    *count = 0;




    for (adapterIndex = 0; ; adapterIndex++)
    {
        ZeroMemory(&adapter, sizeof(DISPLAY_DEVICEW));
        adapter.cb = sizeof(DISPLAY_DEVICEW);

        if (!EnumDisplayDevicesW(((void*)0), adapterIndex, &adapter, 0))
            break;

        if (!(adapter.StateFlags & DISPLAY_DEVICE_ACTIVE))
            continue;

        ZeroMemory(&display, sizeof(DISPLAY_DEVICEW));
        display.cb = sizeof(DISPLAY_DEVICEW);

        if (EnumDisplayDevicesW(adapter.DeviceName, 0, &display, 0))
        {
            hasDisplays = GLFW_TRUE;
            break;
        }
    }

    for (adapterIndex = 0; ; adapterIndex++)
    {
        ZeroMemory(&adapter, sizeof(DISPLAY_DEVICEW));
        adapter.cb = sizeof(DISPLAY_DEVICEW);

        if (!EnumDisplayDevicesW(((void*)0), adapterIndex, &adapter, 0))
            break;

        if (!(adapter.StateFlags & DISPLAY_DEVICE_ACTIVE))
            continue;

        if (adapter.StateFlags & DISPLAY_DEVICE_PRIMARY_DEVICE)
            primaryIndex = found;

        if (hasDisplays)
        {
            for (displayIndex = 0; ; displayIndex++)
            {
                ZeroMemory(&display, sizeof(DISPLAY_DEVICEW));
                display.cb = sizeof(DISPLAY_DEVICEW);

                if (!EnumDisplayDevicesW(adapter.DeviceName, displayIndex, &display, 0))
                    break;

                found++;
                monitors = realloc(monitors, sizeof(_GLFWmonitor*) * found);
                monitors[found - 1] = createMonitor(&adapter, &display);
            }
        }
        else
        {
            found++;
            monitors = realloc(monitors, sizeof(_GLFWmonitor*) * found);
            monitors[found - 1] = createMonitor(&adapter, ((void*)0));
        }
    }

    _GLFW_SWAP_POINTERS(monitors[0], monitors[primaryIndex]);

    *count = found;
    return monitors;
}
