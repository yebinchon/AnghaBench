
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_5__ {TYPE_4__ originalRamp; } ;
typedef TYPE_1__ _GLFWmonitor ;
typedef int GLFWmonitor ;
typedef int GLFWgammaramp ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformGetGammaRamp (TYPE_1__*,TYPE_4__*) ;
 int _glfwPlatformSetGammaRamp (TYPE_1__*,int const*) ;

void glfwSetGammaRamp(GLFWmonitor* handle, const GLFWgammaramp* ramp)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;

    _GLFW_REQUIRE_INIT();

    if (!monitor->originalRamp.size)
        _glfwPlatformGetGammaRamp(monitor, &monitor->originalRamp);

    _glfwPlatformSetGammaRamp(monitor, ramp);
}
