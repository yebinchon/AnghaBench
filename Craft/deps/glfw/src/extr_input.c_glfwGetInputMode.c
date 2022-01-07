
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursorMode; int stickyKeys; int stickyMouseButtons; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;



 int GLFW_INVALID_ENUM ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _glfwInputError (int ,char*) ;

int glfwGetInputMode(GLFWwindow* handle, int mode)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    _GLFW_REQUIRE_INIT_OR_RETURN(0);

    switch (mode)
    {
        case 130:
            return window->cursorMode;
        case 129:
            return window->stickyKeys;
        case 128:
            return window->stickyMouseButtons;
        default:
            _glfwInputError(GLFW_INVALID_ENUM, "Invalid input mode");
            return 0;
    }
}
