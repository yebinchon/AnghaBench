
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*) ;

void _glfwPlatformGetWindowPos(_GLFWwindow* window, int* xpos, int* ypos)
{



    _glfwInputError(GLFW_PLATFORM_ERROR,
                    "Wayland: Window position retrieval not supported");
}
