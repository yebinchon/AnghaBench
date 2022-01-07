
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int OFFSET ;
 int create_texture () ;
 int draw_quad (int ) ;
 int error_callback ;
 int exit (int ) ;
 int glColor3f (float,float,float) ;
 int glfwGetWindowPos (int *,int*,int*) ;
 int glfwGetWindowSize (int *,int*,int *) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 int glfwWindowShouldClose (int *) ;
 int * open_window (char*,int *,int,int) ;
 int ** windows ;

int main(int argc, char** argv)
{
    int x, y, width;
    GLuint texture;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    windows[0] = open_window("First", ((void*)0), OFFSET, OFFSET);
    if (!windows[0])
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }




    texture = create_texture();

    glfwGetWindowPos(windows[0], &x, &y);
    glfwGetWindowSize(windows[0], &width, ((void*)0));


    windows[1] = open_window("Second", windows[0], x + width + OFFSET, y);
    if (!windows[1])
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }


    glfwMakeContextCurrent(windows[0]);
    glColor3f(0.6f, 0.f, 0.6f);
    glfwMakeContextCurrent(windows[1]);
    glColor3f(0.6f, 0.6f, 0.f);

    glfwMakeContextCurrent(windows[0]);

    while (!glfwWindowShouldClose(windows[0]) &&
           !glfwWindowShouldClose(windows[1]))
    {
        glfwMakeContextCurrent(windows[0]);
        draw_quad(texture);

        glfwMakeContextCurrent(windows[1]);
        draw_quad(texture);

        glfwSwapBuffers(windows[0]);
        glfwSwapBuffers(windows[1]);

        glfwWaitEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
