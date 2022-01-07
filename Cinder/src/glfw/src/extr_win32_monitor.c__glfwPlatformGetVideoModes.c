
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int adapterName; scalar_t__ modesPruned; } ;
struct TYPE_17__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
struct TYPE_19__ {int dmSize; int dmBitsPerPel; int dmDisplayFrequency; int dmPelsHeight; int dmPelsWidth; } ;
struct TYPE_18__ {int blueBits; int greenBits; int redBits; int refreshRate; int height; int width; } ;
typedef TYPE_3__ GLFWvidmode ;
typedef TYPE_4__ DEVMODEW ;


 int CDS_TEST ;
 scalar_t__ ChangeDisplaySettingsExW (int ,TYPE_4__*,int *,int ,int *) ;
 scalar_t__ DISP_CHANGE_SUCCESSFUL ;
 int EnumDisplaySettingsW (int ,int,TYPE_4__*) ;
 int ZeroMemory (TYPE_4__*,int) ;
 scalar_t__ _glfwCompareVideoModes (TYPE_3__*,TYPE_3__*) ;
 int _glfwPlatformGetVideoMode (TYPE_2__*,TYPE_3__*) ;
 int _glfwSplitBPP (int,int *,int *,int *) ;
 TYPE_3__* calloc (int,int) ;
 scalar_t__ realloc (TYPE_3__*,int) ;

GLFWvidmode* _glfwPlatformGetVideoModes(_GLFWmonitor* monitor, int* count)
{
    int modeIndex = 0, size = 0;
    GLFWvidmode* result = ((void*)0);

    *count = 0;

    for (;;)
    {
        int i;
        GLFWvidmode mode;
        DEVMODEW dm;

        ZeroMemory(&dm, sizeof(DEVMODEW));
        dm.dmSize = sizeof(DEVMODEW);

        if (!EnumDisplaySettingsW(monitor->win32.adapterName, modeIndex, &dm))
            break;

        modeIndex++;


        if (dm.dmBitsPerPel < 15)
            continue;

        mode.width = dm.dmPelsWidth;
        mode.height = dm.dmPelsHeight;
        mode.refreshRate = dm.dmDisplayFrequency;
        _glfwSplitBPP(dm.dmBitsPerPel,
                      &mode.redBits,
                      &mode.greenBits,
                      &mode.blueBits);

        for (i = 0; i < *count; i++)
        {
            if (_glfwCompareVideoModes(result + i, &mode) == 0)
                break;
        }


        if (i < *count)
            continue;

        if (monitor->win32.modesPruned)
        {

            if (ChangeDisplaySettingsExW(monitor->win32.adapterName,
                                         &dm,
                                         ((void*)0),
                                         CDS_TEST,
                                         ((void*)0)) != DISP_CHANGE_SUCCESSFUL)
            {
                continue;
            }
        }

        if (*count == size)
        {
            size += 128;
            result = (GLFWvidmode*) realloc(result, size * sizeof(GLFWvidmode));
        }

        (*count)++;
        result[*count - 1] = mode;
    }

    if (!*count)
    {

        result = calloc(1, sizeof(GLFWvidmode));
        _glfwPlatformGetVideoMode(monitor, result);
        *count = 1;
    }

    return result;
}
