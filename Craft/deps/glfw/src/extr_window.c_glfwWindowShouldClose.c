
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int closed; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;

int glfwWindowShouldClose(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFW_REQUIRE_INIT_OR_RETURN(0);
    return window->closed;
}
