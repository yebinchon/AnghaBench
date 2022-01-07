
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ monitor; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;


 int GLFW_INVALID_VALUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformSetWindowPos (TYPE_1__*,int,int) ;

void glfwSetWindowPos(GLFWwindow* handle, int xpos, int ypos)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    _GLFW_REQUIRE_INIT();

    if (window->monitor)
    {
        _glfwInputError(GLFW_INVALID_VALUE,
                        "Full screen windows cannot be moved");
        return;
    }

    _glfwPlatformSetWindowPos(window, xpos, ypos);
}
