
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_16__ {int handle; } ;
struct TYPE_18__ {TYPE_1__ x11; TYPE_4__* monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_19__ {TYPE_3__* window; } ;
typedef TYPE_4__ _GLFWmonitor ;
struct TYPE_17__ {int display; } ;
struct TYPE_15__ {TYPE_2__ x11; } ;


 int XFlush (int ) ;
 int XMapRaised (int ,int ) ;
 int XMoveResizeWindow (int ,int ,int,int,int,int) ;
 TYPE_14__ _glfw ;
 int _glfwInputWindowMonitorChange (TYPE_3__*,TYPE_4__*) ;
 int acquireMonitor (TYPE_3__*) ;
 int releaseMonitor (TYPE_3__*) ;
 int updateNormalHints (TYPE_3__*,int,int) ;
 int updateWindowMode (TYPE_3__*) ;
 scalar_t__ waitForVisibilityNotify (TYPE_3__*) ;

void _glfwPlatformSetWindowMonitor(_GLFWwindow* window,
                                   _GLFWmonitor* monitor,
                                   int xpos, int ypos,
                                   int width, int height,
                                   int refreshRate)
{
    if (window->monitor == monitor)
    {
        if (monitor)
        {
            if (monitor->window == window)
                acquireMonitor(window);
        }
        else
        {
            XMoveResizeWindow(_glfw.x11.display, window->x11.handle,
                              xpos, ypos, width, height);
        }

        return;
    }

    if (window->monitor)
        releaseMonitor(window);

    _glfwInputWindowMonitorChange(window, monitor);
    updateNormalHints(window, width, height);
    updateWindowMode(window);

    if (window->monitor)
    {
        XMapRaised(_glfw.x11.display, window->x11.handle);
        if (waitForVisibilityNotify(window))
            acquireMonitor(window);
    }
    else
    {
        XMoveResizeWindow(_glfw.x11.display, window->x11.handle,
                          xpos, ypos, width, height);
    }

    XFlush(_glfw.x11.display);
}
