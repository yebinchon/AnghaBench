
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shell_surface; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int wl_shell_surface_set_toplevel (int ) ;

void _glfwPlatformShowWindow(_GLFWwindow* window)
{
    wl_shell_surface_set_toplevel(window->wl.shell_surface);
}
