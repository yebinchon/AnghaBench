
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * context; int * dc; } ;
struct TYPE_6__ {TYPE_1__ wgl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int _glfwSetContextTLS (TYPE_2__*) ;
 int _glfw_wglMakeCurrent (int *,int *) ;

void _glfwPlatformMakeContextCurrent(_GLFWwindow* window)
{
    if (window)
        _glfw_wglMakeCurrent(window->wgl.dc, window->wgl.context);
    else
        _glfw_wglMakeCurrent(((void*)0), ((void*)0));

    _glfwSetContextTLS(window);
}
