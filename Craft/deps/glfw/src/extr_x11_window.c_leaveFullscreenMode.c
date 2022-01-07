
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {scalar_t__ count; int exposure; int blanking; int interval; int timeout; } ;
struct TYPE_6__ {TYPE_2__ saver; int display; } ;
struct TYPE_9__ {TYPE_1__ x11; } ;


 int XSetScreenSaver (int ,int ,int ,int ,int ) ;
 TYPE_5__ _glfw ;
 int _glfwRestoreVideoMode (int ) ;

__attribute__((used)) static void leaveFullscreenMode(_GLFWwindow* window)
{
    _glfwRestoreVideoMode(window->monitor);

    _glfw.x11.saver.count--;

    if (_glfw.x11.saver.count == 0)
    {

        XSetScreenSaver(_glfw.x11.display,
                        _glfw.x11.saver.timeout,
                        _glfw.x11.saver.interval,
                        _glfw.x11.saver.blanking,
                        _glfw.x11.saver.exposure);
    }
}
