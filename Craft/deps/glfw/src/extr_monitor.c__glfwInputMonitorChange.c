
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * monitor; struct TYPE_5__* next; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_4__ {int (* monitor ) (int *,int ) ;} ;
struct TYPE_6__ {int monitorCount; int ** monitors; TYPE_1__ callbacks; TYPE_2__* windowListHead; } ;
typedef int GLFWmonitor ;


 int GLFW_CONNECTED ;
 int GLFW_DISCONNECTED ;
 TYPE_3__ _glfw ;
 int _glfwFreeMonitor (int *) ;
 int _glfwFreeMonitors (int **,int) ;
 int ** _glfwPlatformGetMonitors (int*) ;
 scalar_t__ _glfwPlatformIsSameMonitor (int *,int *) ;
 int stub1 (int *,int ) ;
 int stub2 (int *,int ) ;

void _glfwInputMonitorChange(void)
{
    int i, j, monitorCount = _glfw.monitorCount;
    _GLFWmonitor** monitors = _glfw.monitors;

    _glfw.monitors = _glfwPlatformGetMonitors(&_glfw.monitorCount);



    for (i = 0; i < _glfw.monitorCount; i++)
    {
        for (j = 0; j < monitorCount; j++)
        {
            if (_glfwPlatformIsSameMonitor(_glfw.monitors[i], monitors[j]))
            {
                _glfwFreeMonitor(_glfw.monitors[i]);
                _glfw.monitors[i] = monitors[j];
                break;
            }
        }
    }



    for (i = 0; i < monitorCount; i++)
    {
        _GLFWwindow* window;

        for (j = 0; j < _glfw.monitorCount; j++)
        {
            if (monitors[i] == _glfw.monitors[j])
                break;
        }

        if (j < _glfw.monitorCount)
            continue;

        for (window = _glfw.windowListHead; window; window = window->next)
        {
            if (window->monitor == monitors[i])
                window->monitor = ((void*)0);
        }

        if (_glfw.callbacks.monitor)
            _glfw.callbacks.monitor((GLFWmonitor*) monitors[i], GLFW_DISCONNECTED);
    }





    for (i = 0; i < _glfw.monitorCount; i++)
    {
        for (j = 0; j < monitorCount; j++)
        {
            if (_glfw.monitors[i] == monitors[j])
            {
                monitors[j] = ((void*)0);
                break;
            }
        }

        if (j < monitorCount)
            continue;

        if (_glfw.callbacks.monitor)
            _glfw.callbacks.monitor((GLFWmonitor*) _glfw.monitors[i], GLFW_CONNECTED);
    }

    _glfwFreeMonitors(monitors, monitorCount);
}
