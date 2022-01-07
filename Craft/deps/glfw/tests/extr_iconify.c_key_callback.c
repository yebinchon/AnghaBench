
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;




 int GLFW_PRESS ;
 int GL_TRUE ;
 double glfwGetTime () ;
 int glfwIconifyWindow (int *) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int printf (char*,double,char*) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    printf("%0.2f Key %s\n",
           glfwGetTime(),
           action == GLFW_PRESS ? "pressed" : "released");

    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 128:
            glfwIconifyWindow(window);
            break;
        case 129:
            glfwSetWindowShouldClose(window, GL_TRUE);
            break;
    }
}
