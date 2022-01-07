
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ crtc; } ;
struct TYPE_6__ {TYPE_1__ x11; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int GLFWbool ;



GLFWbool _glfwPlatformIsSameMonitor(_GLFWmonitor* first, _GLFWmonitor* second)
{
    return first->x11.crtc == second->x11.crtc;
}
