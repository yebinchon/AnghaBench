
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_3__ {int display; scalar_t__ NET_WM_STATE_MAXIMIZED_HORZ; scalar_t__ NET_WM_STATE_MAXIMIZED_VERT; scalar_t__ NET_WM_STATE; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int XFlush (int ) ;
 int _NET_WM_STATE_ADD ;
 TYPE_2__ _glfw ;
 int sendEventToWM (int *,scalar_t__,int ,scalar_t__,scalar_t__,int,int ) ;

void _glfwPlatformMaximizeWindow(_GLFWwindow* window)
{
    if (_glfw.x11.NET_WM_STATE &&
        _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT &&
        _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ)
    {
        sendEventToWM(window,
                      _glfw.x11.NET_WM_STATE,
                      _NET_WM_STATE_ADD,
                      _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT,
                      _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ,
                      1, 0);
        XFlush(_glfw.x11.display);
    }
}
