
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shell_surface; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int wl_shell_surface_set_title (int ,char const*) ;

void _glfwPlatformSetWindowTitle(_GLFWwindow* window, const char* title)
{
    wl_shell_surface_set_title(window->wl.shell_surface, title);
}
