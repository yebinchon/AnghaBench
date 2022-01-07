
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ visible; scalar_t__ title; } ;
typedef TYPE_2__ _GLFWwndconfig ;
struct TYPE_13__ {int visible; int monitorsSize; scalar_t__ monitorsCount; int monitors; int * currentCursor; int * shell_surface; int title; } ;
struct TYPE_15__ {TYPE_1__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int _GLFWmonitor ;
typedef int _GLFWfbconfig ;
struct TYPE_16__ {scalar_t__ client; } ;
typedef TYPE_4__ _GLFWctxconfig ;


 int GLFW_FALSE ;
 scalar_t__ GLFW_NO_API ;
 int GLFW_TRUE ;
 int _glfwCreateContextEGL (TYPE_3__*,TYPE_4__ const*,int const*) ;
 int _glfwInitEGL () ;
 int calloc (int,int) ;
 int createShellSurface (TYPE_3__*) ;
 int createSurface (TYPE_3__*,TYPE_2__ const*) ;
 int strdup (scalar_t__) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!createSurface(window, wndconfig))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (!_glfwInitEGL())
            return GLFW_FALSE;
        if (!_glfwCreateContextEGL(window, ctxconfig, fbconfig))
            return GLFW_FALSE;
    }

    if (wndconfig->title)
        window->wl.title = strdup(wndconfig->title);

    if (wndconfig->visible)
    {
        if (!createShellSurface(window))
            return GLFW_FALSE;

        window->wl.visible = GLFW_TRUE;
    }
    else
    {
        window->wl.shell_surface = ((void*)0);
        window->wl.visible = GLFW_FALSE;
    }

    window->wl.currentCursor = ((void*)0);

    window->wl.monitors = calloc(1, sizeof(_GLFWmonitor*));
    window->wl.monitorsCount = 0;
    window->wl.monitorsSize = 1;

    return GLFW_TRUE;
}
