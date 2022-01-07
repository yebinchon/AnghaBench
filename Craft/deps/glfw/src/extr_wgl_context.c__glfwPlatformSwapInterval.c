
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int interval; int (* SwapIntervalEXT ) (int) ;scalar_t__ EXT_swap_control; } ;
struct TYPE_5__ {TYPE_1__ wgl; int monitor; } ;
typedef TYPE_2__ _GLFWwindow ;


 scalar_t__ _glfwIsCompositionEnabled () ;
 TYPE_2__* _glfwPlatformGetCurrentContext () ;
 int stub1 (int) ;

void _glfwPlatformSwapInterval(int interval)
{
    _GLFWwindow* window = _glfwPlatformGetCurrentContext();

    window->wgl.interval = interval;



    if (_glfwIsCompositionEnabled() && !window->monitor)
        interval = 0;

    if (window->wgl.EXT_swap_control)
        window->wgl.SwapIntervalEXT(interval);
}
