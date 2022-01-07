
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clipboardString; int foregroundLockTimeout; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;


 int SPIF_SENDCHANGE ;
 int SPI_SETFOREGROUNDLOCKTIMEOUT ;
 int SystemParametersInfoW (int ,int ,int ,int ) ;
 int UIntToPtr (int ) ;
 TYPE_2__ _glfw ;
 int _glfwTerminateContextAPI () ;
 int _glfwTerminateJoysticks () ;
 int _glfwUnregisterWindowClass () ;
 int free (int ) ;
 int terminateLibraries () ;

void _glfwPlatformTerminate(void)
{
    _glfwUnregisterWindowClass();


    SystemParametersInfoW(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
                          UIntToPtr(_glfw.win32.foregroundLockTimeout),
                          SPIF_SENDCHANGE);

    free(_glfw.win32.clipboardString);

    _glfwTerminateJoysticks();
    _glfwTerminateContextAPI();
    terminateLibraries();
}
