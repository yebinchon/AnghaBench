
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*) ;

const char* _glfwPlatformGetClipboardString(_GLFWwindow* window)
{

    _glfwInputError(GLFW_PLATFORM_ERROR,
                    "Wayland: Clipboard getting not implemented yet");
    return ((void*)0);
}
