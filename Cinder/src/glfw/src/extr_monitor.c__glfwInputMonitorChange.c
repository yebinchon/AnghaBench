
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * monitor; struct TYPE_7__* next; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_6__ {int (* monitor ) (int *,int ) ;} ;
struct TYPE_8__ {int monitorCount; int ** monitors; TYPE_1__ callbacks; TYPE_2__* windowListHead; } ;
typedef int GLFWmonitor ;


 int GLFW_CONNECTED ;
 int GLFW_DISCONNECTED ;
 TYPE_5__ _glfw ;
 int _glfwFreeMonitor (int *) ;
 int _glfwFreeMonitors (int **,int) ;
 int ** _glfwPlatformGetMonitors (int*) ;
 int _glfwPlatformGetWindowSize (TYPE_2__*,int*,int*) ;
 scalar_t__ _glfwPlatformIsSameMonitor (int *,int *) ;
 int _glfwPlatformSetWindowMonitor (TYPE_2__*,int *,int ,int ,int,int,int ) ;
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
            {
                int width, height;
                _glfwPlatformGetWindowSize(window, &width, &height);
                _glfwPlatformSetWindowMonitor(window, ((void*)0), 0, 0, width, height, 0);
            }
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
