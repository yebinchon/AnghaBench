
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* monitor; } ;
typedef TYPE_4__ _GLFWwndconfig ;
struct TYPE_13__ {int * currentCursor; int shell_surface; } ;
struct TYPE_15__ {TYPE_3__ wl; } ;
typedef TYPE_5__ _GLFWwindow ;
typedef int _GLFWfbconfig ;
typedef int _GLFWctxconfig ;
struct TYPE_11__ {int output; } ;
struct TYPE_12__ {TYPE_1__ wl; } ;


 int GL_FALSE ;
 int GL_TRUE ;
 int WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT ;
 int _glfwCreateContext (TYPE_5__*,int const*,int const*) ;
 int createSurface (TYPE_5__*,TYPE_4__ const*) ;
 int wl_shell_surface_set_fullscreen (int ,int ,int ,int ) ;
 int wl_shell_surface_set_toplevel (int ) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!_glfwCreateContext(window, ctxconfig, fbconfig))
        return GL_FALSE;

    if (!createSurface(window, wndconfig))
        return GL_FALSE;

    if (wndconfig->monitor)
    {
        wl_shell_surface_set_fullscreen(
            window->wl.shell_surface,
            WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT,
            0,
            wndconfig->monitor->wl.output);
    }
    else
    {
        wl_shell_surface_set_toplevel(window->wl.shell_surface);
    }

    window->wl.currentCursor = ((void*)0);

    return GL_TRUE;
}
