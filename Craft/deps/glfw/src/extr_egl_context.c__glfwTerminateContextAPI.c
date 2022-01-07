
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; int display; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;


 TYPE_2__ _glfw ;
 int _glfwDestroyContextTLS () ;
 int _glfw_dlclose (int *) ;
 int _glfw_eglTerminate (int ) ;

void _glfwTerminateContextAPI(void)
{
    if (_glfw_eglTerminate)
        _glfw_eglTerminate(_glfw.egl.display);

    if (_glfw.egl.handle)
    {
        _glfw_dlclose(_glfw.egl.handle);
        _glfw.egl.handle = ((void*)0);
    }

    _glfwDestroyContextTLS();
}
