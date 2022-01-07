
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stickyKeys; scalar_t__* keys; } ;
typedef TYPE_1__ _GLFWwindow ;


 int GLFW_KEY_LAST ;
 scalar_t__ GLFW_RELEASE ;
 scalar_t__ _GLFW_STICK ;

__attribute__((used)) static void setStickyKeys(_GLFWwindow* window, int enabled)
{
    if (window->stickyKeys == enabled)
        return;

    if (!enabled)
    {
        int i;


        for (i = 0; i <= GLFW_KEY_LAST; i++)
        {
            if (window->keys[i] == _GLFW_STICK)
                window->keys[i] = GLFW_RELEASE;
        }
    }

    window->stickyKeys = enabled;
}
