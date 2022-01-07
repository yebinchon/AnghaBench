
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stickyMouseButtons; scalar_t__* mouseButtons; } ;
typedef TYPE_1__ _GLFWwindow ;


 int GLFW_MOUSE_BUTTON_LAST ;
 scalar_t__ GLFW_RELEASE ;
 scalar_t__ _GLFW_STICK ;

__attribute__((used)) static void setStickyMouseButtons(_GLFWwindow* window, int enabled)
{
    if (window->stickyMouseButtons == enabled)
        return;

    if (!enabled)
    {
        int i;


        for (i = 0; i <= GLFW_MOUSE_BUTTON_LAST; i++)
        {
            if (window->mouseButtons[i] == _GLFW_STICK)
                window->mouseButtons[i] = GLFW_RELEASE;
        }
    }

    window->stickyMouseButtons = enabled;
}
