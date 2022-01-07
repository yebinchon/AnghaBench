
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWmonitor ;
typedef int GLFWgammaramp ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*) ;

void _glfwPlatformSetGammaRamp(_GLFWmonitor* monitor, const GLFWgammaramp* ramp)
{

    _glfwInputError(GLFW_PLATFORM_ERROR,
                    "Wayland: Gamma ramp setting not supported yet");
}
