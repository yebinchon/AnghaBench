
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursorMode; double cursorPosX; double cursorPosY; } ;
typedef TYPE_1__ _GLFWwindow ;
struct TYPE_5__ {TYPE_1__* cursorWindow; } ;
typedef int GLFWwindow ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 int _GLFW_REQUIRE_INIT () ;
 TYPE_3__ _glfw ;
 int _glfwPlatformSetCursorPos (TYPE_1__*,double,double) ;

void glfwSetCursorPos(GLFWwindow* handle, double xpos, double ypos)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    _GLFW_REQUIRE_INIT();

    if (_glfw.cursorWindow != window)
        return;

    if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {

        window->cursorPosX = xpos;
        window->cursorPosY = ypos;
    }
    else
    {

        _glfwPlatformSetCursorPos(window, xpos, ypos);
    }
}
