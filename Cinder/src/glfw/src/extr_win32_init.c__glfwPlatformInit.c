
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int helperWindowHandle; int foregroundLockTimeout; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int PROCESS_PER_MONITOR_DPI_AWARE ;
 int SPIF_SENDCHANGE ;
 int SPI_GETFOREGROUNDLOCKTIMEOUT ;
 int SPI_SETFOREGROUNDLOCKTIMEOUT ;
 int SystemParametersInfoW (int ,int ,int *,int ) ;
 int * UIntToPtr (int ) ;
 TYPE_2__ _glfw ;
 int _glfwInitJoysticksWin32 () ;
 int _glfwInitThreadLocalStorageWin32 () ;
 int _glfwInitTimerWin32 () ;
 int _glfwPlatformPollEvents () ;
 int _glfwRegisterWindowClassWin32 () ;
 int _glfw_SetProcessDPIAware () ;
 int _glfw_SetProcessDpiAwareness (int ) ;
 int createHelperWindow () ;
 int createKeyTables () ;
 int loadLibraries () ;

int _glfwPlatformInit(void)
{
    if (!_glfwInitThreadLocalStorageWin32())
        return GLFW_FALSE;




    SystemParametersInfoW(SPI_GETFOREGROUNDLOCKTIMEOUT, 0,
                          &_glfw.win32.foregroundLockTimeout, 0);
    SystemParametersInfoW(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, UIntToPtr(0),
                          SPIF_SENDCHANGE);

    if (!loadLibraries())
        return GLFW_FALSE;

    createKeyTables();

    if (_glfw_SetProcessDpiAwareness)
        _glfw_SetProcessDpiAwareness(PROCESS_PER_MONITOR_DPI_AWARE);
    else if (_glfw_SetProcessDPIAware)
        _glfw_SetProcessDPIAware();

    if (!_glfwRegisterWindowClassWin32())
        return GLFW_FALSE;

    _glfw.win32.helperWindowHandle = createHelperWindow();
    if (!_glfw.win32.helperWindowHandle)
        return GLFW_FALSE;

    _glfwPlatformPollEvents();

    _glfwInitTimerWin32();
    _glfwInitJoysticksWin32();

    return GLFW_TRUE;
}
