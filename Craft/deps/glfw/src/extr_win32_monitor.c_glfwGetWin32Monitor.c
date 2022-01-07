
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* publicDisplayName; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmonitor ;
typedef int GLFWmonitor ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;

const char* glfwGetWin32Monitor(GLFWmonitor* handle)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));
    return monitor->win32.publicDisplayName;
}
