
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformMakeContextCurrent (int *) ;

void glfwMakeContextCurrent(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFW_REQUIRE_INIT();
    _glfwPlatformMakeContextCurrent(window);
}
