
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ monitor; } ;
typedef TYPE_1__ _GLFWwndconfig ;
typedef int _GLFWwindow ;
typedef int _GLFWfbconfig ;
typedef int _GLFWctxconfig ;


 int GL_FALSE ;
 int GL_TRUE ;
 int _glfwCreateContext (int *,int const*,int const*) ;
 int _glfwPlatformShowWindow (int *) ;
 int createWindow (int *,TYPE_1__ const*) ;
 int enterFullscreenMode (int *) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!_glfwCreateContext(window, ctxconfig, fbconfig))
        return GL_FALSE;

    if (!createWindow(window, wndconfig))
        return GL_FALSE;

    if (wndconfig->monitor)
    {
        _glfwPlatformShowWindow(window);
        enterFullscreenMode(window);
    }

    return GL_TRUE;
}
