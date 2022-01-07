
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int handle; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_15__ {scalar_t__ y; scalar_t__ x; int flags; } ;
typedef TYPE_4__ XSizeHints ;
struct TYPE_12__ {int display; } ;
struct TYPE_16__ {TYPE_1__ x11; } ;


 int PPosition ;
 TYPE_4__* XAllocSizeHints () ;
 int XFlush (int ) ;
 int XFree (TYPE_4__*) ;
 scalar_t__ XGetWMNormalHints (int ,int ,TYPE_4__*,long*) ;
 int XMoveWindow (int ,int ,int,int) ;
 int XSetWMNormalHints (int ,int ,TYPE_4__*) ;
 TYPE_7__ _glfw ;
 int _glfwPlatformWindowVisible (TYPE_3__*) ;

void _glfwPlatformSetWindowPos(_GLFWwindow* window, int xpos, int ypos)
{


    if (!_glfwPlatformWindowVisible(window))
    {
        long supplied;
        XSizeHints* hints = XAllocSizeHints();

        if (XGetWMNormalHints(_glfw.x11.display, window->x11.handle, hints, &supplied))
        {
            hints->flags |= PPosition;
            hints->x = hints->y = 0;

            XSetWMNormalHints(_glfw.x11.display, window->x11.handle, hints);
        }

        XFree(hints);
    }

    XMoveWindow(_glfw.x11.display, window->x11.handle, xpos, ypos);
    XFlush(_glfw.x11.display);
}
