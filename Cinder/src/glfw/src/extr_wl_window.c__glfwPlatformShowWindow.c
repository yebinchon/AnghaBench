
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int visible; int shell_surface; } ;
struct TYPE_6__ {TYPE_1__ wl; int monitor; } ;
typedef TYPE_2__ _GLFWwindow ;


 int GLFW_TRUE ;
 int createShellSurface (TYPE_2__*) ;

void _glfwPlatformShowWindow(_GLFWwindow* window)
{
    if (!window->monitor)
    {
        if (!window->wl.shell_surface)
            createShellSurface(window);
        window->wl.visible = GLFW_TRUE;
    }
}
