
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ instance; } ;
struct TYPE_5__ {TYPE_1__ opengl32; } ;
struct TYPE_6__ {TYPE_2__ wgl; } ;


 int FreeLibrary (scalar_t__) ;
 TYPE_3__ _glfw ;
 int _glfwDestroyContextTLS () ;

void _glfwTerminateContextAPI(void)
{
    if (_glfw.wgl.opengl32.instance)
        FreeLibrary(_glfw.wgl.opengl32.instance);

    _glfwDestroyContextTLS();
}
