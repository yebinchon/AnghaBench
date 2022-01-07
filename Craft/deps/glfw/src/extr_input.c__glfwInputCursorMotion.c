
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* cursorPos ) (int *,double,double) ;} ;
struct TYPE_5__ {scalar_t__ cursorMode; double cursorPosX; double cursorPosY; TYPE_1__ callbacks; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 int stub1 (int *,double,double) ;

void _glfwInputCursorMotion(_GLFWwindow* window, double x, double y)
{
    if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        if (x == 0.0 && y == 0.0)
            return;

        window->cursorPosX += x;
        window->cursorPosY += y;

        x = window->cursorPosX;
        y = window->cursorPosY;
    }

    if (window->callbacks.cursorPos)
        window->callbacks.cursorPos((GLFWwindow*) window, x, y);
}
