
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int dm ;
struct TYPE_16__ {int modeChanged; int adapterName; } ;
struct TYPE_17__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
struct TYPE_19__ {int dmSize; int dmFields; int dmBitsPerPel; int dmDisplayFrequency; int dmPelsHeight; int dmPelsWidth; } ;
struct TYPE_18__ {int redBits; int greenBits; int blueBits; int refreshRate; int height; int width; } ;
typedef TYPE_3__ GLFWvidmode ;
typedef int GLFWbool ;
typedef TYPE_4__ DEVMODEW ;


 int CDS_FULLSCREEN ;
 scalar_t__ ChangeDisplaySettingsExW (int ,TYPE_4__*,int *,int ,int *) ;
 scalar_t__ DISP_CHANGE_SUCCESSFUL ;
 int DM_BITSPERPEL ;
 int DM_DISPLAYFREQUENCY ;
 int DM_PELSHEIGHT ;
 int DM_PELSWIDTH ;
 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int ZeroMemory (TYPE_4__*,int) ;
 TYPE_3__* _glfwChooseVideoMode (TYPE_2__*,TYPE_3__ const*) ;
 scalar_t__ _glfwCompareVideoModes (TYPE_3__*,TYPE_3__ const*) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformGetVideoMode (TYPE_2__*,TYPE_3__*) ;

GLFWbool _glfwSetVideoModeWin32(_GLFWmonitor* monitor, const GLFWvidmode* desired)
{
    GLFWvidmode current;
    const GLFWvidmode* best;
    DEVMODEW dm;

    best = _glfwChooseVideoMode(monitor, desired);
    _glfwPlatformGetVideoMode(monitor, &current);
    if (_glfwCompareVideoModes(&current, best) == 0)
        return GLFW_TRUE;

    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(DEVMODEW);
    dm.dmFields = DM_PELSWIDTH | DM_PELSHEIGHT | DM_BITSPERPEL |
                            DM_DISPLAYFREQUENCY;
    dm.dmPelsWidth = best->width;
    dm.dmPelsHeight = best->height;
    dm.dmBitsPerPel = best->redBits + best->greenBits + best->blueBits;
    dm.dmDisplayFrequency = best->refreshRate;

    if (dm.dmBitsPerPel < 15 || dm.dmBitsPerPel >= 24)
        dm.dmBitsPerPel = 32;

    if (ChangeDisplaySettingsExW(monitor->win32.adapterName,
                                 &dm,
                                 ((void*)0),
                                 CDS_FULLSCREEN,
                                 ((void*)0)) != DISP_CHANGE_SUCCESSFUL)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR, "Win32: Failed to set video mode");
        return GLFW_FALSE;
    }

    monitor->win32.modeChanged = GLFW_TRUE;
    return GLFW_TRUE;
}
