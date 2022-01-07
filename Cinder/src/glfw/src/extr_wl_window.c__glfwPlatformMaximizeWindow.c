
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maximized; scalar_t__ shell_surface; } ;
struct TYPE_5__ {TYPE_1__ wl; int monitor; } ;
typedef TYPE_2__ _GLFWwindow ;


 scalar_t__ GLFW_TRUE ;
 int wl_shell_surface_set_maximized (scalar_t__,int *) ;

void _glfwPlatformMaximizeWindow(_GLFWwindow* window)
{
    if (!window->monitor && !window->wl.maximized)
    {
        if (window->wl.shell_surface)
        {

            wl_shell_surface_set_maximized(window->wl.shell_surface, ((void*)0));
        }
        window->wl.maximized = GLFW_TRUE;
    }
}
