
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GLFW_CURSOR ;
 int GLFW_CURSOR_DISABLED ;
 int GLFW_CURSOR_NORMAL ;
 int GLFW_MOUSE_BUTTON_LEFT ;
 int GLFW_PRESS ;
 int cursorX ;
 int cursorY ;
 int glfwGetCursorPos (int *,int *,int *) ;
 int glfwSetInputMode (int *,int ,int ) ;

void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
    if (button != GLFW_MOUSE_BUTTON_LEFT)
        return;

    if (action == GLFW_PRESS)
    {
        glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
        glfwGetCursorPos(window, &cursorX, &cursorY);
    }
    else
        glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
}
