
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int active_view ;
 int do_redraw ;
 int glfwGetFramebufferSize (int *,int*,int*) ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int rot_x ;
 int rot_y ;
 int rot_z ;
 double xpos ;
 double ypos ;

__attribute__((used)) static void cursorPosFun(GLFWwindow* window, double x, double y)
{
    int wnd_width, wnd_height, fb_width, fb_height;
    double scale;

    glfwGetWindowSize(window, &wnd_width, &wnd_height);
    glfwGetFramebufferSize(window, &fb_width, &fb_height);

    scale = (double) fb_width / (double) wnd_width;

    x *= scale;
    y *= scale;


    switch (active_view)
    {
        case 1:
            rot_x += (int) (y - ypos);
            rot_z += (int) (x - xpos);
            do_redraw = 1;
            break;
        case 3:
            rot_x += (int) (y - ypos);
            rot_y += (int) (x - xpos);
            do_redraw = 1;
            break;
        case 4:
            rot_y += (int) (x - xpos);
            rot_z += (int) (y - ypos);
            do_redraw = 1;
            break;
        default:

            break;
    }


    xpos = x;
    ypos = y;
}
