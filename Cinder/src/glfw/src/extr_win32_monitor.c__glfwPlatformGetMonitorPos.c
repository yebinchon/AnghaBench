
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int adapterName; } ;
struct TYPE_10__ {TYPE_1__ win32; } ;
typedef TYPE_3__ _GLFWmonitor ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_11__ {int dmSize; TYPE_2__ dmPosition; } ;
typedef TYPE_4__ DEVMODEW ;


 int EDS_ROTATEDMODE ;
 int ENUM_CURRENT_SETTINGS ;
 int EnumDisplaySettingsExW (int ,int ,TYPE_4__*,int ) ;
 int ZeroMemory (TYPE_4__*,int) ;

void _glfwPlatformGetMonitorPos(_GLFWmonitor* monitor, int* xpos, int* ypos)
{
    DEVMODEW settings;
    ZeroMemory(&settings, sizeof(DEVMODEW));
    settings.dmSize = sizeof(DEVMODEW);

    EnumDisplaySettingsExW(monitor->win32.adapterName,
                           ENUM_CURRENT_SETTINGS,
                           &settings,
                           EDS_ROTATEDMODE);

    if (xpos)
        *xpos = settings.dmPosition.x;
    if (ypos)
        *ypos = settings.dmPosition.y;
}
