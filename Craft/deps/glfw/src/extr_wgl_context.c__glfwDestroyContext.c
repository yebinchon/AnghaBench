
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * dc; int * context; } ;
struct TYPE_5__ {int handle; } ;
struct TYPE_7__ {TYPE_2__ wgl; TYPE_1__ win32; } ;
typedef TYPE_3__ _GLFWwindow ;


 int ReleaseDC (int ,int *) ;
 int _glfw_wglDeleteContext (int *) ;

void _glfwDestroyContext(_GLFWwindow* window)
{
    if (window->wgl.context)
    {
        _glfw_wglDeleteContext(window->wgl.context);
        window->wgl.context = ((void*)0);
    }

    if (window->wgl.dc)
    {
        ReleaseDC(window->win32.handle, window->wgl.dc);
        window->wgl.dc = ((void*)0);
    }
}
