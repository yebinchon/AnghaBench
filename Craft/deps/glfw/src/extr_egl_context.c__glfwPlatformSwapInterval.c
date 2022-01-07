
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;


 TYPE_2__ _glfw ;
 int _glfw_eglSwapInterval (int ,int) ;

void _glfwPlatformSwapInterval(int interval)
{
    _glfw_eglSwapInterval(_glfw.egl.display, interval);
}
