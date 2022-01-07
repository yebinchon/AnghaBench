
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int modesCount; } ;
struct TYPE_9__ {TYPE_1__ wl; int modes; } ;
typedef TYPE_3__ _GLFWmonitor ;
struct TYPE_8__ {int monitorsCount; TYPE_3__** monitors; } ;
struct TYPE_10__ {TYPE_2__ wl; } ;


 TYPE_6__ _glfw ;
 int _glfwPlatformGetVideoModes (TYPE_3__*,int *) ;
 void* calloc (int,int) ;

_GLFWmonitor** _glfwPlatformGetMonitors(int* count)
{
    _GLFWmonitor** monitors;
    _GLFWmonitor* monitor;
    int i, monitorsCount = _glfw.wl.monitorsCount;

    if (_glfw.wl.monitorsCount == 0)
        goto err;

    monitors = calloc(monitorsCount, sizeof(_GLFWmonitor*));

    for (i = 0; i < monitorsCount; i++)
    {
        _GLFWmonitor* origMonitor = _glfw.wl.monitors[i];
        monitor = calloc(1, sizeof(_GLFWmonitor));

        monitor->modes =
            _glfwPlatformGetVideoModes(origMonitor,
                                       &origMonitor->wl.modesCount);
        *monitor = *_glfw.wl.monitors[i];
        monitors[i] = monitor;
    }

    *count = monitorsCount;
    return monitors;

err:
    *count = 0;
    return ((void*)0);
}
