
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int handle; } ;
struct TYPE_8__ {int monitor; TYPE_1__ win32; int videoMode; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int height; int width; } ;
typedef TYPE_3__ GLFWvidmode ;
typedef int GLFWbool ;


 int HWND_TOPMOST ;
 int SWP_NOACTIVATE ;
 int SWP_NOCOPYBITS ;
 int SetWindowPos (int ,int ,int,int,int ,int ,int) ;
 int _glfwInputMonitorWindowChange (int ,TYPE_2__*) ;
 int _glfwPlatformGetMonitorPos (int ,int*,int*) ;
 int _glfwPlatformGetVideoMode (int ,TYPE_3__*) ;
 int _glfwSetVideoModeWin32 (int ,int *) ;

__attribute__((used)) static GLFWbool acquireMonitor(_GLFWwindow* window)
{
    GLFWvidmode mode;
    GLFWbool status;
    int xpos, ypos;

    status = _glfwSetVideoModeWin32(window->monitor, &window->videoMode);

    _glfwPlatformGetVideoMode(window->monitor, &mode);
    _glfwPlatformGetMonitorPos(window->monitor, &xpos, &ypos);

    SetWindowPos(window->win32.handle, HWND_TOPMOST,
                 xpos, ypos, mode.width, mode.height,
                 SWP_NOACTIVATE | SWP_NOCOPYBITS);

    _glfwInputMonitorWindowChange(window->monitor, window);
    return status;
}
