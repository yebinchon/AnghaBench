
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int monitorCount; scalar_t__ monitors; } ;
typedef int GLFWmonitor ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_1__ _glfw ;

GLFWmonitor** glfwGetMonitors(int* count)
{
    *count = 0;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    *count = _glfw.monitorCount;
    return (GLFWmonitor**) _glfw.monitors;
}
