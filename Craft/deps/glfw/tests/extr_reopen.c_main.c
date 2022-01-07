
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
typedef float GLfloat ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int close_window (int *) ;
 int error_callback ;
 int exit (int ) ;
 int glClear (int ) ;
 int glMatrixMode (int ) ;
 int glOrtho (float,float,float,float,float,float) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glRectf (float,float,float,float) ;
 int glRotatef (float,float,float,float) ;
 int ** glfwGetMonitors (int*) ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwInit () ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetTime (double) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int * open_window (int,int,int *) ;
 int printf (char*) ;
 int rand () ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

int main(int argc, char** argv)
{
    int count = 0;
    GLFWwindow* window;

    srand((unsigned int) time(((void*)0)));

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    for (;;)
    {
        int width, height;
        GLFWmonitor* monitor = ((void*)0);

        if (count % 2 == 0)
        {
            int monitorCount;
            GLFWmonitor** monitors = glfwGetMonitors(&monitorCount);
            monitor = monitors[rand() % monitorCount];
        }

        if (monitor)
        {
            const GLFWvidmode* mode = glfwGetVideoMode(monitor);
            width = mode->width;
            height = mode->height;
        }
        else
        {
            width = 640;
            height = 480;
        }

        window = open_window(width, height, monitor);
        if (!window)
        {
            glfwTerminate();
            exit(EXIT_FAILURE);
        }

        glMatrixMode(GL_PROJECTION);
        glOrtho(-1.f, 1.f, -1.f, 1.f, 1.f, -1.f);
        glMatrixMode(GL_MODELVIEW);

        glfwSetTime(0.0);

        while (glfwGetTime() < 5.0)
        {
            glClear(GL_COLOR_BUFFER_BIT);

            glPushMatrix();
            glRotatef((GLfloat) glfwGetTime() * 100.f, 0.f, 0.f, 1.f);
            glRectf(-0.5f, -0.5f, 1.f, 1.f);
            glPopMatrix();

            glfwSwapBuffers(window);
            glfwPollEvents();

            if (glfwWindowShouldClose(window))
            {
                close_window(window);
                printf("User closed window\n");

                glfwTerminate();
                exit(EXIT_SUCCESS);
            }
        }

        printf("Closing window\n");
        close_window(window);

        count++;
    }

    glfwTerminate();
}
