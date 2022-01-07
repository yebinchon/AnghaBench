
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dbi ;
struct TYPE_3__ {int dbcc_size; int dbcc_classguid; int dbcc_devicetype; } ;
typedef int * HWND ;
typedef int DEV_BROADCAST_HDR ;
typedef TYPE_1__ DEV_BROADCAST_DEVICEINTERFACE_W ;


 int * CreateWindowExW (int ,int ,char*,int,int ,int ,int,int,int ,int *,int ,int *) ;
 int DBT_DEVTYP_DEVICEINTERFACE ;
 int DEVICE_NOTIFY_WINDOW_HANDLE ;
 int GLFW_PLATFORM_ERROR ;
 int GUID_DEVINTERFACE_HID ;
 int GetModuleHandleW (int *) ;
 int HWND_MESSAGE ;
 int RegisterDeviceNotificationW (int *,int *,int ) ;
 int SW_HIDE ;
 int ShowWindow (int *,int ) ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_EX_OVERLAPPEDWINDOW ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _GLFW_WNDCLASSNAME ;
 int _glfwInputError (int ,char*) ;

__attribute__((used)) static HWND createHelperWindow(void)
{
    HWND window = CreateWindowExW(WS_EX_OVERLAPPEDWINDOW,
                                  _GLFW_WNDCLASSNAME,
                                  L"GLFW helper window",
                                  WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
                                  0, 0, 1, 1,
                                  HWND_MESSAGE, ((void*)0),
                                  GetModuleHandleW(((void*)0)),
                                  ((void*)0));
    if (!window)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Win32: Failed to create helper window");
        return ((void*)0);
    }



    ShowWindow(window, SW_HIDE);


    {
        DEV_BROADCAST_DEVICEINTERFACE_W dbi;
        ZeroMemory(&dbi, sizeof(dbi));
        dbi.dbcc_size = sizeof(dbi);
        dbi.dbcc_devicetype = DBT_DEVTYP_DEVICEINTERFACE;
        dbi.dbcc_classguid = GUID_DEVINTERFACE_HID;

        RegisterDeviceNotificationW(window,
                                    (DEV_BROADCAST_HDR*) &dbi,
                                    DEVICE_NOTIFY_WINDOW_HANDLE);
    }

   return window;
}
