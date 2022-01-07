
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;



 int GL_TRUE ;
 int glfwSetWindowShouldClose (int *,int ) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    switch(key)
    {
        case 128:

            glfwSetWindowShouldClose(window, GL_TRUE);
            break;
    }
}
