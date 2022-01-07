
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; scalar_t__ display; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;


 scalar_t__ EGL_NO_DISPLAY ;
 TYPE_2__ _glfw ;
 int _glfw_dlclose (int *) ;
 int eglTerminate (scalar_t__) ;

void _glfwTerminateEGL(void)
{
    if (_glfw.egl.display)
    {
        eglTerminate(_glfw.egl.display);
        _glfw.egl.display = EGL_NO_DISPLAY;
    }

    if (_glfw.egl.handle)
    {
        _glfw_dlclose(_glfw.egl.handle);
        _glfw.egl.handle = ((void*)0);
    }
}
