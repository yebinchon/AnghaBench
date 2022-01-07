
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
struct TYPE_7__ {TYPE_1__ win32; int monitor; int videoMode; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int height; int width; } ;
typedef int GLboolean ;
typedef TYPE_3__ GLFWvidmode ;


 int HWND_TOPMOST ;
 int SWP_NOCOPYBITS ;
 int SetWindowPos (int ,int ,int,int,int ,int ,int ) ;
 int _glfwPlatformGetMonitorPos (int ,int*,int*) ;
 int _glfwPlatformGetVideoMode (int ,TYPE_3__*) ;
 int _glfwSetVideoMode (int ,int *) ;

__attribute__((used)) static GLboolean enterFullscreenMode(_GLFWwindow* window)
{
    GLFWvidmode mode;
    GLboolean status;
    int xpos, ypos;

    status = _glfwSetVideoMode(window->monitor, &window->videoMode);

    _glfwPlatformGetVideoMode(window->monitor, &mode);
    _glfwPlatformGetMonitorPos(window->monitor, &xpos, &ypos);

    SetWindowPos(window->win32.handle, HWND_TOPMOST,
                 xpos, ypos, mode.width, mode.height, SWP_NOCOPYBITS);

    return status;
}
