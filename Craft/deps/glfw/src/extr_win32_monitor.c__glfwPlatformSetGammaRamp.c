
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int adapterName; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int WORD ;
struct TYPE_8__ {int size; int blue; int green; int red; } ;
typedef int HDC ;
typedef TYPE_3__ GLFWgammaramp ;


 int CreateDCW (char*,int ,int *,int *) ;
 int DeleteDC (int ) ;
 int GLFW_PLATFORM_ERROR ;
 int SetDeviceGammaRamp (int ,int *) ;
 int _glfwInputError (int ,char*) ;
 int memcpy (int *,int ,int) ;

void _glfwPlatformSetGammaRamp(_GLFWmonitor* monitor, const GLFWgammaramp* ramp)
{
    HDC dc;
    WORD values[768];

    if (ramp->size != 256)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Win32: Gamma ramp size must be 256");
        return;
    }

    memcpy(values + 0, ramp->red, 256 * sizeof(unsigned short));
    memcpy(values + 256, ramp->green, 256 * sizeof(unsigned short));
    memcpy(values + 512, ramp->blue, 256 * sizeof(unsigned short));

    dc = CreateDCW(L"DISPLAY", monitor->win32.adapterName, ((void*)0), ((void*)0));
    SetDeviceGammaRamp(dc, values);
    DeleteDC(dc);
}
