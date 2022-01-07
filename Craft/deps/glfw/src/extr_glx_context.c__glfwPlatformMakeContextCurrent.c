
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * context; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_11__ {TYPE_2__ glx; TYPE_1__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {int display; } ;
struct TYPE_12__ {TYPE_3__ x11; } ;


 int None ;
 TYPE_7__ _glfw ;
 int _glfwSetContextTLS (TYPE_4__*) ;
 int _glfw_glXMakeCurrent (int ,int ,int *) ;

void _glfwPlatformMakeContextCurrent(_GLFWwindow* window)
{
    if (window)
    {
        _glfw_glXMakeCurrent(_glfw.x11.display,
                             window->x11.handle,
                             window->glx.context);
    }
    else
        _glfw_glXMakeCurrent(_glfw.x11.display, None, ((void*)0));

    _glfwSetContextTLS(window);
}
