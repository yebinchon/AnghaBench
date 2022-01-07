
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;
 int GLFW_PRESS ;
 int GL_TRUE ;
 int alpha ;
 int beta ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int init_grid () ;
 float zoom ;

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 134:
            glfwSetWindowShouldClose(window, GL_TRUE);
            break;
        case 129:
            init_grid();
            break;
        case 133:
            alpha += 5;
            break;
        case 130:
            alpha -= 5;
            break;
        case 128:
            beta -= 5;
            break;
        case 135:
            beta += 5;
            break;
        case 131:
            zoom -= 0.25f;
            if (zoom < 0.f)
                zoom = 0.f;
            break;
        case 132:
            zoom += 0.25f;
            break;
        default:
            break;
    }
}
