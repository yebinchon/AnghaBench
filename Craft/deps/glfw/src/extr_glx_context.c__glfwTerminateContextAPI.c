
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; } ;
struct TYPE_4__ {TYPE_1__ glx; } ;


 TYPE_2__ _glfw ;
 int _glfwDestroyContextTLS () ;
 int dlclose (int *) ;

void _glfwTerminateContextAPI(void)
{



    if (_glfw.glx.handle)
    {
        dlclose(_glfw.glx.handle);
        _glfw.glx.handle = ((void*)0);
    }

    _glfwDestroyContextTLS();
}
