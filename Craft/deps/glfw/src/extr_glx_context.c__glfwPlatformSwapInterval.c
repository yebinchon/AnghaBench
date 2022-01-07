
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int handle; } ;
struct TYPE_10__ {TYPE_2__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {int (* SwapIntervalSGI ) (int) ;scalar_t__ SGI_swap_control; int (* SwapIntervalMESA ) (int) ;scalar_t__ MESA_swap_control; int (* SwapIntervalEXT ) (int ,int ,int) ;scalar_t__ EXT_swap_control; } ;
struct TYPE_7__ {int display; } ;
struct TYPE_11__ {TYPE_3__ glx; TYPE_1__ x11; } ;


 TYPE_6__ _glfw ;
 TYPE_4__* _glfwPlatformGetCurrentContext () ;
 int stub1 (int ,int ,int) ;
 int stub2 (int) ;
 int stub3 (int) ;

void _glfwPlatformSwapInterval(int interval)
{
    _GLFWwindow* window = _glfwPlatformGetCurrentContext();

    if (_glfw.glx.EXT_swap_control)
    {
        _glfw.glx.SwapIntervalEXT(_glfw.x11.display,
                                  window->x11.handle,
                                  interval);
    }
    else if (_glfw.glx.MESA_swap_control)
        _glfw.glx.SwapIntervalMESA(interval);
    else if (_glfw.glx.SGI_swap_control)
    {
        if (interval > 0)
            _glfw.glx.SwapIntervalSGI(interval);
    }
}
