
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int GLFWwindow ;



 int GLFW_INVALID_ENUM ;


 int GL_FALSE ;
 int GL_TRUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*) ;
 int setCursorMode (int *,int) ;
 int setStickyKeys (int *,int ) ;
 int setStickyMouseButtons (int *,int ) ;

void glfwSetInputMode(GLFWwindow* handle, int mode, int value)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    _GLFW_REQUIRE_INIT();

    switch (mode)
    {
        case 130:
            setCursorMode(window, value);
            break;
        case 129:
            setStickyKeys(window, value ? GL_TRUE : GL_FALSE);
            break;
        case 128:
            setStickyMouseButtons(window, value ? GL_TRUE : GL_FALSE);
            break;
        default:
            _glfwInputError(GLFW_INVALID_ENUM, "Invalid input mode");
            break;
    }
}
