
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int handle; } ;
struct TYPE_12__ {scalar_t__ cursorMode; TYPE_2__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {int handle; } ;
struct TYPE_13__ {TYPE_1__ x11; } ;
typedef TYPE_5__ _GLFWcursor ;
struct TYPE_11__ {int display; } ;
struct TYPE_14__ {TYPE_3__ x11; } ;


 scalar_t__ GLFW_CURSOR_NORMAL ;
 int XDefineCursor (int ,int ,int ) ;
 int XFlush (int ) ;
 int XUndefineCursor (int ,int ) ;
 TYPE_8__ _glfw ;

void _glfwPlatformSetCursor(_GLFWwindow* window, _GLFWcursor* cursor)
{
    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (cursor)
            XDefineCursor(_glfw.x11.display, window->x11.handle, cursor->x11.handle);
        else
            XUndefineCursor(_glfw.x11.display, window->x11.handle);

        XFlush(_glfw.x11.display);
    }
}
