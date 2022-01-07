
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* focus ) (int *,scalar_t__) ;} ;
struct TYPE_7__ {scalar_t__* keys; scalar_t__* mouseButtons; TYPE_1__ callbacks; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;
typedef scalar_t__ GLFWbool ;


 int GLFW_KEY_LAST ;
 int GLFW_MOUSE_BUTTON_LAST ;
 scalar_t__ GLFW_PRESS ;
 int GLFW_RELEASE ;
 int _glfwInputKey (TYPE_2__*,int,int ,int ,int ) ;
 int _glfwInputMouseClick (TYPE_2__*,int,int ,int ) ;
 int stub1 (int *,scalar_t__) ;
 int stub2 (int *,scalar_t__) ;

void _glfwInputWindowFocus(_GLFWwindow* window, GLFWbool focused)
{
    if (focused)
    {
        if (window->callbacks.focus)
            window->callbacks.focus((GLFWwindow*) window, focused);
    }
    else
    {
        int i;

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
