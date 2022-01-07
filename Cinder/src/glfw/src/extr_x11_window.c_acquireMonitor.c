
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_17__ {int handle; scalar_t__ overrideRedirect; } ;
struct TYPE_18__ {TYPE_7__* monitor; TYPE_3__ x11; int videoMode; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_20__ {int window; } ;
struct TYPE_19__ {int height; int width; } ;
struct TYPE_15__ {scalar_t__ count; int exposure; int blanking; int interval; int timeout; } ;
struct TYPE_16__ {int display; TYPE_1__ saver; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;
typedef TYPE_5__ GLFWvidmode ;
typedef int GLFWbool ;


 int DefaultExposures ;
 int DontPreferBlanking ;
 int XGetScreenSaver (int ,int *,int *,int *,int *) ;
 int XMoveResizeWindow (int ,int ,int,int,int ,int ) ;
 int XSetScreenSaver (int ,int ,int ,int ,int ) ;
 TYPE_13__ _glfw ;
 int _glfwInputMonitorWindowChange (TYPE_7__*,TYPE_4__*) ;
 int _glfwPlatformGetMonitorPos (TYPE_7__*,int*,int*) ;
 int _glfwPlatformGetVideoMode (TYPE_7__*,TYPE_5__*) ;
 int _glfwSetVideoModeX11 (TYPE_7__*,int *) ;

__attribute__((used)) static GLFWbool acquireMonitor(_GLFWwindow* window)
{
    GLFWbool status;

    if (_glfw.x11.saver.count == 0)
    {

        XGetScreenSaver(_glfw.x11.display,
                        &_glfw.x11.saver.timeout,
                        &_glfw.x11.saver.interval,
                        &_glfw.x11.saver.blanking,
                        &_glfw.x11.saver.exposure);


        XSetScreenSaver(_glfw.x11.display, 0, 0, DontPreferBlanking,
                        DefaultExposures);
    }

    if (!window->monitor->window)
        _glfw.x11.saver.count++;

    status = _glfwSetVideoModeX11(window->monitor, &window->videoMode);

    if (window->x11.overrideRedirect)
    {
        int xpos, ypos;
        GLFWvidmode mode;


        _glfwPlatformGetMonitorPos(window->monitor, &xpos, &ypos);
        _glfwPlatformGetVideoMode(window->monitor, &mode);

        XMoveResizeWindow(_glfw.x11.display, window->x11.handle,
                          xpos, ypos, mode.width, mode.height);
    }

    _glfwInputMonitorWindowChange(window->monitor, window);
    return status;
}
