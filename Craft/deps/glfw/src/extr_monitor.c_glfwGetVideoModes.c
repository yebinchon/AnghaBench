
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int modeCount; int const* modes; } ;
typedef TYPE_1__ _GLFWmonitor ;
typedef int GLFWvidmode ;
typedef int GLFWmonitor ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int refreshVideoModes (TYPE_1__*) ;

const GLFWvidmode* glfwGetVideoModes(GLFWmonitor* handle, int* count)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;

    *count = 0;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (!refreshVideoModes(monitor))
        return ((void*)0);

    *count = monitor->modeCount;
    return monitor->modes;
}
