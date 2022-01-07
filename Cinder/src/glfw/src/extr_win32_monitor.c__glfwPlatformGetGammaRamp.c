
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int adapterName; } ;
struct TYPE_8__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int WORD ;
struct TYPE_9__ {int blue; int green; int red; } ;
typedef int HDC ;
typedef TYPE_3__ GLFWgammaramp ;


 int CreateDCW (char*,int ,int *,int *) ;
 int DeleteDC (int ) ;
 int GetDeviceGammaRamp (int ,int *) ;
 int _glfwAllocGammaArrays (TYPE_3__*,int) ;
 int memcpy (int ,int *,int) ;

void _glfwPlatformGetGammaRamp(_GLFWmonitor* monitor, GLFWgammaramp* ramp)
{
    HDC dc;
    WORD values[768];

    dc = CreateDCW(L"DISPLAY", monitor->win32.adapterName, ((void*)0), ((void*)0));
    GetDeviceGammaRamp(dc, values);
    DeleteDC(dc);

    _glfwAllocGammaArrays(ramp, 256);

    memcpy(ramp->red, values + 0, 256 * sizeof(unsigned short));
    memcpy(ramp->green, values + 256, 256 * sizeof(unsigned short));
    memcpy(ramp->blue, values + 512, 256 * sizeof(unsigned short));
}
