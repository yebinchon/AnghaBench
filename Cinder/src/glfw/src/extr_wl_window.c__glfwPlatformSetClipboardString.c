
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*) ;

void _glfwPlatformSetClipboardString(_GLFWwindow* window, const char* string)
{

    _glfwInputError(GLFW_PLATFORM_ERROR,
                    "Wayland: Clipboard setting not implemented yet");
}
