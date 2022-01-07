
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int foregroundLockTimeout; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;


 int GL_FALSE ;
 int GL_TRUE ;
 int SPIF_SENDCHANGE ;
 int SPI_GETFOREGROUNDLOCKTIMEOUT ;
 int SPI_SETFOREGROUNDLOCKTIMEOUT ;
 int SystemParametersInfoW (int ,int ,int *,int ) ;
 int * UIntToPtr (int ) ;
 TYPE_2__ _glfw ;
 int _glfwInitContextAPI () ;
 int _glfwInitJoysticks () ;
 int _glfwInitTimer () ;
 int _glfwRegisterWindowClass () ;
 int _glfw_SetProcessDPIAware () ;
 int createKeyTables () ;
 int initLibraries () ;

int _glfwPlatformInit(void)
{



    SystemParametersInfoW(SPI_GETFOREGROUNDLOCKTIMEOUT, 0,
                          &_glfw.win32.foregroundLockTimeout, 0);
    SystemParametersInfoW(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, UIntToPtr(0),
                          SPIF_SENDCHANGE);

    if (!initLibraries())
        return GL_FALSE;

    createKeyTables();

    if (_glfw_SetProcessDPIAware)
        _glfw_SetProcessDPIAware();

    if (!_glfwRegisterWindowClass())
        return GL_FALSE;

    if (!_glfwInitContextAPI())
        return GL_FALSE;

    _glfwInitTimer();
    _glfwInitJoysticks();

    return GL_TRUE;
}
