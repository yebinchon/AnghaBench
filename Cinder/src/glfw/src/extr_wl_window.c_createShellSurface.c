
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int shell_surface; scalar_t__ maximized; scalar_t__ title; int surface; } ;
struct TYPE_13__ {TYPE_4__ wl; TYPE_3__* monitor; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_9__ {int shell; } ;
struct TYPE_14__ {TYPE_1__ wl; } ;
struct TYPE_10__ {int output; } ;
struct TYPE_11__ {TYPE_2__ wl; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT ;
 TYPE_8__ _glfw ;
 int shellSurfaceListener ;
 int wl_shell_get_shell_surface (int ,int ) ;
 int wl_shell_surface_add_listener (int ,int *,TYPE_5__*) ;
 int wl_shell_surface_set_fullscreen (int ,int ,int ,int ) ;
 int wl_shell_surface_set_maximized (int ,int *) ;
 int wl_shell_surface_set_title (int ,scalar_t__) ;
 int wl_shell_surface_set_toplevel (int ) ;

__attribute__((used)) static GLFWbool createShellSurface(_GLFWwindow* window)
{
    window->wl.shell_surface = wl_shell_get_shell_surface(_glfw.wl.shell,
                                                          window->wl.surface);
    if (!window->wl.shell_surface)
        return GLFW_FALSE;

    wl_shell_surface_add_listener(window->wl.shell_surface,
                                  &shellSurfaceListener,
                                  window);

    if (window->wl.title)
        wl_shell_surface_set_title(window->wl.shell_surface, window->wl.title);

    if (window->monitor)
    {
        wl_shell_surface_set_fullscreen(
            window->wl.shell_surface,
            WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT,
            0,
            window->monitor->wl.output);
    }
    else if (window->wl.maximized)
    {
        wl_shell_surface_set_maximized(window->wl.shell_surface, ((void*)0));
    }
    else
    {
        wl_shell_surface_set_toplevel(window->wl.shell_surface);
    }

    return GLFW_TRUE;
}
