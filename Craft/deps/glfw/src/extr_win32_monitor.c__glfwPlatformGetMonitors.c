
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int publicDisplayName; int publicAdapterName; int displayName; int adapterName; int modesPruned; } ;
struct TYPE_13__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
struct TYPE_14__ {int cb; int StateFlags; int * DeviceName; int DeviceString; } ;
typedef int HDC ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ DISPLAY_DEVICEW ;


 int CP_UTF8 ;
 int CreateDCW (char*,int *,int *,int *) ;
 int DISPLAY_DEVICE_ACTIVE ;
 int DISPLAY_DEVICE_MODESPRUNED ;
 int DISPLAY_DEVICE_PRIMARY_DEVICE ;
 int DeleteDC (int ) ;
 int EnumDisplayDevicesW (int *,scalar_t__,TYPE_3__*,int ) ;
 int GLFW_PLATFORM_ERROR ;
 int GL_TRUE ;
 int GetDeviceCaps (int ,int ) ;
 int HORZSIZE ;
 int VERTSIZE ;
 int WideCharToMultiByte (int ,int ,int *,int,int ,int,int *,int *) ;
 int ZeroMemory (TYPE_3__*,int) ;
 int _GLFW_SWAP_POINTERS (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* _glfwAllocMonitor (char*,int ,int ) ;
 char* _glfwCreateUTF8FromWideString (int ) ;
 int _glfwInputError (int ,char*) ;
 int free (char*) ;
 TYPE_2__** realloc (TYPE_2__**,int) ;
 int wcscpy (int ,int *) ;

_GLFWmonitor** _glfwPlatformGetMonitors(int* count)
{
    int found = 0;
    _GLFWmonitor** monitors = ((void*)0);
    DWORD adapterIndex, displayIndex;

    *count = 0;

    for (adapterIndex = 0; ; adapterIndex++)
    {
        DISPLAY_DEVICEW adapter;

        ZeroMemory(&adapter, sizeof(DISPLAY_DEVICEW));
        adapter.cb = sizeof(DISPLAY_DEVICEW);

        if (!EnumDisplayDevicesW(((void*)0), adapterIndex, &adapter, 0))
            break;

        if (!(adapter.StateFlags & DISPLAY_DEVICE_ACTIVE))
            continue;

        for (displayIndex = 0; ; displayIndex++)
        {
            DISPLAY_DEVICEW display;
            _GLFWmonitor* monitor;
            char* name;
            HDC dc;

            ZeroMemory(&display, sizeof(DISPLAY_DEVICEW));
            display.cb = sizeof(DISPLAY_DEVICEW);

            if (!EnumDisplayDevicesW(adapter.DeviceName, displayIndex, &display, 0))
                break;

            name = _glfwCreateUTF8FromWideString(display.DeviceString);
            if (!name)
            {
                _glfwInputError(GLFW_PLATFORM_ERROR,
                                "Win32: Failed to convert string to UTF-8");
                continue;
            }

            dc = CreateDCW(L"DISPLAY", adapter.DeviceName, ((void*)0), ((void*)0));

            monitor = _glfwAllocMonitor(name,
                                        GetDeviceCaps(dc, HORZSIZE),
                                        GetDeviceCaps(dc, VERTSIZE));

            DeleteDC(dc);
            free(name);

            if (adapter.StateFlags & DISPLAY_DEVICE_MODESPRUNED)
                monitor->win32.modesPruned = GL_TRUE;

            wcscpy(monitor->win32.adapterName, adapter.DeviceName);
            wcscpy(monitor->win32.displayName, display.DeviceName);

            WideCharToMultiByte(CP_UTF8, 0,
                                adapter.DeviceName, -1,
                                monitor->win32.publicAdapterName,
                                sizeof(monitor->win32.publicAdapterName),
                                ((void*)0), ((void*)0));

            WideCharToMultiByte(CP_UTF8, 0,
                                display.DeviceName, -1,
                                monitor->win32.publicDisplayName,
                                sizeof(monitor->win32.publicDisplayName),
                                ((void*)0), ((void*)0));

            found++;
            monitors = realloc(monitors, sizeof(_GLFWmonitor*) * found);
            monitors[found - 1] = monitor;

            if (adapter.StateFlags & DISPLAY_DEVICE_PRIMARY_DEVICE &&
                displayIndex == 0)
            {
                _GLFW_SWAP_POINTERS(monitors[0], monitors[found - 1]);
            }
        }
    }

    *count = found;
    return monitors;
}
