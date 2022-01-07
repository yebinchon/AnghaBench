
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ modeChanged; int adapterName; } ;
struct TYPE_5__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;


 int CDS_FULLSCREEN ;
 int ChangeDisplaySettingsExW (int ,int *,int *,int ,int *) ;
 scalar_t__ GLFW_FALSE ;

void _glfwRestoreVideoModeWin32(_GLFWmonitor* monitor)
{
    if (monitor->win32.modeChanged)
    {
        ChangeDisplaySettingsExW(monitor->win32.adapterName,
                                 ((void*)0), ((void*)0), CDS_FULLSCREEN, ((void*)0));
        monitor->win32.modeChanged = GLFW_FALSE;
    }
}
