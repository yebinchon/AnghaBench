
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dc; int interval; } ;
struct TYPE_5__ {TYPE_1__ wgl; int monitor; } ;
typedef TYPE_2__ _GLFWwindow ;


 int SwapBuffers (int ) ;
 scalar_t__ _glfwIsCompositionEnabled () ;
 int _glfw_DwmFlush () ;
 int abs (int ) ;

void _glfwPlatformSwapBuffers(_GLFWwindow* window)
{

    if (_glfwIsCompositionEnabled() && !window->monitor)
    {
        int count = abs(window->wgl.interval);
        while (count--)
            _glfw_DwmFlush();
    }

    SwapBuffers(window->wgl.dc);
}
