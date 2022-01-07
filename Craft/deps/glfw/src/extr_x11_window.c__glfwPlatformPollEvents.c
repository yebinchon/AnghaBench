
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cursorMode; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int XEvent ;
struct TYPE_6__ {int display; } ;
struct TYPE_8__ {TYPE_2__* cursorWindow; TYPE_1__ x11; } ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 int XNextEvent (int ,int *) ;
 int XPending (int ) ;
 TYPE_5__ _glfw ;
 int _glfwPlatformGetWindowSize (TYPE_2__*,int*,int*) ;
 int _glfwPlatformSetCursorPos (TYPE_2__*,int,int) ;
 int processEvent (int *) ;

void _glfwPlatformPollEvents(void)
{
    int count = XPending(_glfw.x11.display);
    while (count--)
    {
        XEvent event;
        XNextEvent(_glfw.x11.display, &event);
        processEvent(&event);
    }

    _GLFWwindow* window = _glfw.cursorWindow;
    if (window && window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        int width, height;
        _glfwPlatformGetWindowSize(window, &width, &height);
        _glfwPlatformSetCursorPos(window, width / 2, height / 2);
    }
}
