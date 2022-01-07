
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int surface; } ;
struct TYPE_8__ {TYPE_2__ egl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int display; } ;
struct TYPE_9__ {TYPE_1__ egl; } ;


 TYPE_5__ _glfw ;
 int _glfw_eglSwapBuffers (int ,int ) ;

void _glfwPlatformSwapBuffers(_GLFWwindow* window)
{
    _glfw_eglSwapBuffers(_glfw.egl.display, window->egl.surface);
}
