
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GLFW_MOUSE_BUTTON_LEFT ;
 int GLFW_PRESS ;
 int active_view ;
 int do_redraw ;
 int height ;
 int width ;
 int xpos ;
 int ypos ;

__attribute__((used)) static void mouseButtonFun(GLFWwindow* window, int button, int action, int mods)
{
    if ((button == GLFW_MOUSE_BUTTON_LEFT) && action == GLFW_PRESS)
    {

        active_view = 1;
        if (xpos >= width / 2)
            active_view += 1;
        if (ypos >= height / 2)
            active_view += 2;
    }
    else if (button == GLFW_MOUSE_BUTTON_LEFT)
    {

        active_view = 0;
    }

    do_redraw = 1;
}
