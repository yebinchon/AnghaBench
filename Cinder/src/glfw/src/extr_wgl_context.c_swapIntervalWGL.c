
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int interval; } ;
struct TYPE_8__ {TYPE_1__ wgl; } ;
struct TYPE_10__ {int monitor; TYPE_2__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {int (* SwapIntervalEXT ) (int) ;scalar_t__ EXT_swap_control; } ;
struct TYPE_11__ {TYPE_3__ wgl; } ;


 TYPE_6__ _glfw ;
 TYPE_4__* _glfwPlatformGetCurrentContext () ;
 scalar_t__ isCompositionEnabled () ;
 int stub1 (int) ;

__attribute__((used)) static void swapIntervalWGL(int interval)
{
    _GLFWwindow* window = _glfwPlatformGetCurrentContext();

    window->context.wgl.interval = interval;



    if (isCompositionEnabled() && !window->monitor)
        interval = 0;

    if (_glfw.wgl.EXT_swap_control)
        _glfw.wgl.SwapIntervalEXT(interval);
}
