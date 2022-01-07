
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dc; int interval; } ;
struct TYPE_6__ {TYPE_1__ wgl; } ;
struct TYPE_7__ {TYPE_2__ context; int monitor; } ;
typedef TYPE_3__ _GLFWwindow ;


 int SwapBuffers (int ) ;
 int _glfw_DwmFlush () ;
 int abs (int ) ;
 scalar_t__ isCompositionEnabled () ;

__attribute__((used)) static void swapBuffersWGL(_GLFWwindow* window)
{

    if (isCompositionEnabled() && !window->monitor)
    {
        int count = abs(window->context.wgl.interval);
        while (count--)
            _glfw_DwmFlush();
    }

    SwapBuffers(window->context.wgl.dc);
}
