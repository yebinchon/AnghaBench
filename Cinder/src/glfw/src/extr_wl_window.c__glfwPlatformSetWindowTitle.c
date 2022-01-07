
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ shell_surface; scalar_t__ title; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int free (scalar_t__) ;
 scalar_t__ strdup (char const*) ;
 int wl_shell_surface_set_title (scalar_t__,char const*) ;

void _glfwPlatformSetWindowTitle(_GLFWwindow* window, const char* title)
{
    if (window->wl.title)
        free(window->wl.title);
    window->wl.title = strdup(title);
    if (window->wl.shell_surface)
        wl_shell_surface_set_title(window->wl.shell_surface, title);
}
