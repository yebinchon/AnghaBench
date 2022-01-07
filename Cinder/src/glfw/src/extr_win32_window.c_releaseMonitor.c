
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* monitor; } ;
typedef TYPE_1__ _GLFWwindow ;
struct TYPE_6__ {TYPE_1__* window; } ;


 int _glfwInputMonitorWindowChange (TYPE_3__*,int *) ;
 int _glfwRestoreVideoModeWin32 (TYPE_3__*) ;

__attribute__((used)) static void releaseMonitor(_GLFWwindow* window)
{
    if (window->monitor->window != window)
        return;

    _glfwInputMonitorWindowChange(window->monitor, ((void*)0));
    _glfwRestoreVideoModeWin32(window->monitor);
}
