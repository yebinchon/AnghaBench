
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* focus ) (int *,scalar_t__) ;} ;
struct TYPE_8__ {scalar_t__* keys; scalar_t__* mouseButtons; TYPE_1__ callbacks; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {TYPE_2__* cursorWindow; } ;
typedef scalar_t__ GLboolean ;
typedef int GLFWwindow ;


 int GLFW_KEY_LAST ;
 int GLFW_MOUSE_BUTTON_LAST ;
 scalar_t__ GLFW_PRESS ;
 int GLFW_RELEASE ;
 TYPE_6__ _glfw ;
 int _glfwInputKey (TYPE_2__*,int,int ,int ,int ) ;
 int _glfwInputMouseClick (TYPE_2__*,int,int ,int ) ;
 int stub1 (int *,scalar_t__) ;
 int stub2 (int *,scalar_t__) ;

void _glfwInputWindowFocus(_GLFWwindow* window, GLboolean focused)
{
    if (focused)
    {
        _glfw.cursorWindow = window;

        if (window->callbacks.focus)
            window->callbacks.focus((GLFWwindow*) window, focused);
    }
    else
    {
        int i;

        _glfw.cursorWindow = ((void*)0);

        if (window->callbacks.focus)
            window->callbacks.focus((GLFWwindow*) window, focused);


        for (i = 0; i <= GLFW_KEY_LAST; i++)
        {
            if (window->keys[i] == GLFW_PRESS)
                _glfwInputKey(window, i, 0, GLFW_RELEASE, 0);
        }


        for (i = 0; i <= GLFW_MOUSE_BUTTON_LAST; i++)
        {
            if (window->mouseButtons[i] == GLFW_PRESS)
                _glfwInputMouseClick(window, i, GLFW_RELEASE, 0);
        }
    }
}
