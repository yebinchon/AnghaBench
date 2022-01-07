
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int publicDisplayName; int displayName; int publicAdapterName; int adapterName; int modesPruned; } ;
struct TYPE_9__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
struct TYPE_10__ {int StateFlags; int DeviceName; int DeviceString; } ;
typedef int HDC ;
typedef TYPE_3__ DISPLAY_DEVICEW ;


 int CP_UTF8 ;
 int CreateDCW (char*,int ,int *,int *) ;
 int DISPLAY_DEVICE_MODESPRUNED ;
 int DeleteDC (int ) ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int GetDeviceCaps (int ,int ) ;
 int HORZSIZE ;
 int VERTSIZE ;
 int WideCharToMultiByte (int ,int ,int ,int,int ,int,int *,int *) ;
 TYPE_2__* _glfwAllocMonitor (char*,int ,int ) ;
 char* _glfwCreateUTF8FromWideStringWin32 (int ) ;
 int _glfwInputError (int ,char*) ;
 int free (char*) ;
 int wcscpy (int ,int ) ;

__attribute__((used)) static _GLFWmonitor* createMonitor(DISPLAY_DEVICEW* adapter,
                                   DISPLAY_DEVICEW* display)
{
    _GLFWmonitor* monitor;
    char* name;
    HDC dc;

    if (display)
        name = _glfwCreateUTF8FromWideStringWin32(display->DeviceString);
    else
        name = _glfwCreateUTF8FromWideStringWin32(adapter->DeviceString);
    if (!name)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Win32: Failed to convert string to UTF-8");
        return ((void*)0);
    }

    dc = CreateDCW(L"DISPLAY", adapter->DeviceName, ((void*)0), ((void*)0));

    monitor = _glfwAllocMonitor(name,
                                GetDeviceCaps(dc, HORZSIZE),
                                GetDeviceCaps(dc, VERTSIZE));

    DeleteDC(dc);
    free(name);

    if (adapter->StateFlags & DISPLAY_DEVICE_MODESPRUNED)
        monitor->win32.modesPruned = GLFW_TRUE;

    wcscpy(monitor->win32.adapterName, adapter->DeviceName);
    WideCharToMultiByte(CP_UTF8, 0,
                        adapter->DeviceName, -1,
                        monitor->win32.publicAdapterName,
                        sizeof(monitor->win32.publicAdapterName),
                        ((void*)0), ((void*)0));

    if (display)
    {
        wcscpy(monitor->win32.displayName, display->DeviceName);
        WideCharToMultiByte(CP_UTF8, 0,
                            display->DeviceName, -1,
                            monitor->win32.publicDisplayName,
                            sizeof(monitor->win32.publicDisplayName),
                            ((void*)0), ((void*)0));
    }

    return monitor;
}
