
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int visible; scalar_t__ shell_surface; } ;
struct TYPE_5__ {TYPE_1__ wl; int monitor; } ;
typedef TYPE_2__ _GLFWwindow ;


 int GLFW_FALSE ;
 int wl_shell_surface_destroy (scalar_t__) ;

void _glfwPlatformHideWindow(_GLFWwindow* window)
{
    if (!window->monitor)
    {
        if (window->wl.shell_surface)
            wl_shell_surface_destroy(window->wl.shell_surface);
        window->wl.visible = GLFW_FALSE;
    }
}
