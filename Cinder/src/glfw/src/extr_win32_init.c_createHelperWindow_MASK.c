#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dbi ;
struct TYPE_3__ {int dbcc_size; int /*<<< orphan*/  dbcc_classguid; int /*<<< orphan*/  dbcc_devicetype; } ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  DEV_BROADCAST_HDR ;
typedef  TYPE_1__ DEV_BROADCAST_DEVICEINTERFACE_W ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DBT_DEVTYP_DEVICEINTERFACE ; 
 int /*<<< orphan*/  DEVICE_NOTIFY_WINDOW_HANDLE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GUID_DEVINTERFACE_HID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HWND_MESSAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 int /*<<< orphan*/  WS_EX_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  _GLFW_WNDCLASSNAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static HWND FUNC6(void)
{
    HWND window = FUNC0(WS_EX_OVERLAPPEDWINDOW,
                                  _GLFW_WNDCLASSNAME,
                                  L"GLFW helper window",
                                  WS_CLIPSIBLINGS | WS_CLIPCHILDREN,
                                  0, 0, 1, 1,
                                  HWND_MESSAGE, NULL,
                                  FUNC1(NULL),
                                  NULL);
    if (!window)
    {
        FUNC5(GLFW_PLATFORM_ERROR,
                        "Win32: Failed to create helper window");
        return NULL;
    }

    // HACK: The first call to ShowWindow is ignored if the parent process
    //       passed along a STARTUPINFO, so clear that flag with a no-op call
    FUNC3(window, SW_HIDE);

    // Register for HID device notifications
    {
        DEV_BROADCAST_DEVICEINTERFACE_W dbi;
        FUNC4(&dbi, sizeof(dbi));
        dbi.dbcc_size = sizeof(dbi);
        dbi.dbcc_devicetype = DBT_DEVTYP_DEVICEINTERFACE;
        dbi.dbcc_classguid = GUID_DEVINTERFACE_HID;

        FUNC2(window,
                                    (DEV_BROADCAST_HDR*) &dbi,
                                    DEVICE_NOTIFY_WINDOW_HANDLE);
    }

   return window;
}