
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;







 int GLFW_PRESS ;
 int GL_TRUE ;
 float STEP_SIZE ;
 float gamma_value ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int set_gamma (int *,float) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 132:
        {
            glfwSetWindowShouldClose(window, GL_TRUE);
            break;
        }

        case 131:
        case 129:
        {
            set_gamma(window, gamma_value + STEP_SIZE);
            break;
        }

        case 130:
        case 128:
        {
            if (gamma_value - STEP_SIZE > 0.f)
                set_gamma(window, gamma_value - STEP_SIZE);

            break;
        }
    }
}
