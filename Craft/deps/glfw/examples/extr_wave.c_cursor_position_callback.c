
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;
typedef int GLFWwindow ;


 int GLFW_CURSOR ;
 scalar_t__ GLFW_CURSOR_DISABLED ;
 float alpha ;
 float beta ;
 double cursorX ;
 double cursorY ;
 scalar_t__ glfwGetInputMode (int *,int ) ;

void cursor_position_callback(GLFWwindow* window, double x, double y)
{
    if (glfwGetInputMode(window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED)
    {
        alpha += (GLfloat) (x - cursorX) / 10.f;
        beta += (GLfloat) (y - cursorY) / 10.f;

        cursorX = x;
        cursorY = y;
    }
}
