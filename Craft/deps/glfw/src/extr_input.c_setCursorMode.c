
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cursorMode; int cursorPosX; int cursorPosY; } ;
typedef TYPE_1__ _GLFWwindow ;
struct TYPE_9__ {int cursorPosX; int cursorPosY; TYPE_1__* cursorWindow; } ;


 int GLFW_CURSOR_DISABLED ;
 int GLFW_CURSOR_HIDDEN ;
 int GLFW_CURSOR_NORMAL ;
 int GLFW_INVALID_ENUM ;
 TYPE_7__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformApplyCursorMode (TYPE_1__*) ;
 int _glfwPlatformGetCursorPos (TYPE_1__*,int*,int*) ;
 int _glfwPlatformGetWindowSize (TYPE_1__*,int*,int*) ;
 int _glfwPlatformSetCursorPos (TYPE_1__*,int,int) ;

__attribute__((used)) static void setCursorMode(_GLFWwindow* window, int newMode)
{
    const int oldMode = window->cursorMode;

    if (newMode != GLFW_CURSOR_NORMAL &&
        newMode != GLFW_CURSOR_HIDDEN &&
        newMode != GLFW_CURSOR_DISABLED)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid cursor mode");
        return;
    }

    if (oldMode == newMode)
        return;

    window->cursorMode = newMode;

    if (_glfw.cursorWindow == window)
    {
        if (oldMode == GLFW_CURSOR_DISABLED)
        {
            _glfwPlatformSetCursorPos(window,
                                      _glfw.cursorPosX,
                                      _glfw.cursorPosY);
        }
        else if (newMode == GLFW_CURSOR_DISABLED)
        {
            int width, height;

            _glfwPlatformGetCursorPos(window,
                                      &_glfw.cursorPosX,
                                      &_glfw.cursorPosY);

            window->cursorPosX = _glfw.cursorPosX;
            window->cursorPosY = _glfw.cursorPosY;

            _glfwPlatformGetWindowSize(window, &width, &height);
            _glfwPlatformSetCursorPos(window, width / 2, height / 2);
        }

        _glfwPlatformApplyCursorMode(window);
    }
}
