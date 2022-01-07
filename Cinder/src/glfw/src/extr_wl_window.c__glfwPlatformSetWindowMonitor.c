
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int shell_surface; } ;
struct TYPE_11__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_9__ {int output; } ;
struct TYPE_12__ {TYPE_1__ wl; } ;
typedef TYPE_4__ _GLFWmonitor ;


 int WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT ;
 int _glfwInputWindowMonitorChange (TYPE_3__*,TYPE_4__*) ;
 int wl_shell_surface_set_fullscreen (int ,int ,int,int ) ;
 int wl_shell_surface_set_toplevel (int ) ;

void _glfwPlatformSetWindowMonitor(_GLFWwindow* window,
                                   _GLFWmonitor* monitor,
                                   int xpos, int ypos,
                                   int width, int height,
                                   int refreshRate)
{
    if (monitor)
    {
        wl_shell_surface_set_fullscreen(
            window->wl.shell_surface,
            WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT,
            refreshRate * 1000,
            monitor->wl.output);
    }
    else
    {
        wl_shell_surface_set_toplevel(window->wl.shell_surface);
    }
    _glfwInputWindowMonitorChange(window, monitor);
}
