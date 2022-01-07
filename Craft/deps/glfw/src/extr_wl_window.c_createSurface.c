
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int height; int width; } ;
typedef TYPE_3__ _GLFWwndconfig ;
struct TYPE_11__ {int height; int width; int shell_surface; int surface; int native; } ;
struct TYPE_13__ {TYPE_2__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {int shell; int compositor; } ;
struct TYPE_14__ {TYPE_1__ wl; } ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 TYPE_9__ _glfw ;
 int shellSurfaceListener ;
 int wl_compositor_create_surface (int ) ;
 int wl_egl_window_create (int ,int ,int ) ;
 int wl_shell_get_shell_surface (int ,int ) ;
 int wl_shell_surface_add_listener (int ,int *,TYPE_4__*) ;
 int wl_surface_set_user_data (int ,TYPE_4__*) ;

__attribute__((used)) static GLboolean createSurface(_GLFWwindow* window,
                               const _GLFWwndconfig* wndconfig)
{
    window->wl.surface = wl_compositor_create_surface(_glfw.wl.compositor);
    if (!window->wl.surface)
        return GL_FALSE;

    wl_surface_set_user_data(window->wl.surface, window);

    window->wl.native = wl_egl_window_create(window->wl.surface,
                                             wndconfig->width,
                                             wndconfig->height);
    if (!window->wl.native)
        return GL_FALSE;

    window->wl.shell_surface = wl_shell_get_shell_surface(_glfw.wl.shell,
                                                          window->wl.surface);
    if (!window->wl.shell_surface)
        return GL_FALSE;

    wl_shell_surface_add_listener(window->wl.shell_surface,
                                  &shellSurfaceListener,
                                  window);

    window->wl.width = wndconfig->width;
    window->wl.height = wndconfig->height;

    return GL_TRUE;
}
