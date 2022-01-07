
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int height; int width; } ;
typedef TYPE_3__ _GLFWwndconfig ;
struct TYPE_13__ {int scale; int height; int width; int native; int surface; } ;
struct TYPE_15__ {TYPE_2__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_12__ {int compositor; } ;
struct TYPE_11__ {TYPE_1__ wl; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 TYPE_10__ _glfw ;
 int setOpaqueRegion (TYPE_4__*) ;
 int surfaceListener ;
 int wl_compositor_create_surface (int ) ;
 int wl_egl_window_create (int ,int ,int ) ;
 int wl_surface_add_listener (int ,int *,TYPE_4__*) ;
 int wl_surface_set_user_data (int ,TYPE_4__*) ;

__attribute__((used)) static GLFWbool createSurface(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig)
{
    window->wl.surface = wl_compositor_create_surface(_glfw.wl.compositor);
    if (!window->wl.surface)
        return GLFW_FALSE;

    wl_surface_add_listener(window->wl.surface,
                            &surfaceListener,
                            window);

    wl_surface_set_user_data(window->wl.surface, window);

    window->wl.native = wl_egl_window_create(window->wl.surface,
                                             wndconfig->width,
                                             wndconfig->height);
    if (!window->wl.native)
        return GLFW_FALSE;

    window->wl.width = wndconfig->width;
    window->wl.height = wndconfig->height;
    window->wl.scale = 1;


    setOpaqueRegion(window);

    return GLFW_TRUE;
}
