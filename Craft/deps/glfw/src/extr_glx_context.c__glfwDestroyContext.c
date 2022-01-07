
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * context; int * visual; } ;
struct TYPE_8__ {TYPE_2__ glx; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int display; } ;
struct TYPE_9__ {TYPE_1__ x11; } ;


 int XFree (int *) ;
 TYPE_5__ _glfw ;
 int _glfw_glXDestroyContext (int ,int *) ;

void _glfwDestroyContext(_GLFWwindow* window)
{
    if (window->glx.visual)
    {
        XFree(window->glx.visual);
        window->glx.visual = ((void*)0);
    }

    if (window->glx.context)
    {
        _glfw_glXDestroyContext(_glfw.x11.display, window->glx.context);
        window->glx.context = ((void*)0);
    }
}
