
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;




 int GLFW_PRESS ;
 int GL_FILL ;
 int GL_FRONT_AND_BACK ;
 int GL_LINE ;
 int GL_TRUE ;
 int glPolygonMode (int ,int ) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int wireframe ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action == GLFW_PRESS)
    {
        switch (key)
        {
            case 129:
                glfwSetWindowShouldClose(window, GL_TRUE);
                break;
            case 128:
                wireframe = !wireframe;
                glPolygonMode(GL_FRONT_AND_BACK,
                              wireframe ? GL_LINE : GL_FILL);
                break;
            default:
                break;
        }
    }
}
