
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b; int g; int r; } ;
typedef scalar_t__ GLboolean ;
typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_DECORATED ;
 int GLFW_VISIBLE ;
 int GL_COLOR_BUFFER_BIT ;
 scalar_t__ GL_FALSE ;
 scalar_t__ GL_TRUE ;
 TYPE_1__* colors ;
 int error_callback ;
 int exit (int ) ;
 int glClear (int ) ;
 int glClearColor (int ,int ,int ,float) ;
 int * glfwCreateWindow (int,int,int ,int *,int *) ;
 int glfwGetWindowFrameSize (int *,int*,int*,int*,int*) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetWindowPos (int *,int,int) ;
 int glfwShowWindow (int *) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,scalar_t__) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int key_callback ;
 int * titles ;

int main(int argc, char** argv)
{
    int i;
    GLboolean running = GL_TRUE;
    GLFWwindow* windows[4];

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    glfwWindowHint(GLFW_DECORATED, GL_FALSE);
    glfwWindowHint(GLFW_VISIBLE, GL_FALSE);

    for (i = 0; i < 4; i++)
    {
        int left, top, right, bottom;

        windows[i] = glfwCreateWindow(200, 200, titles[i], ((void*)0), ((void*)0));
        if (!windows[i])
        {
            glfwTerminate();
            exit(EXIT_FAILURE);
        }

        glfwSetKeyCallback(windows[i], key_callback);

        glfwMakeContextCurrent(windows[i]);
        glClearColor(colors[i].r, colors[i].g, colors[i].b, 1.f);

        glfwGetWindowFrameSize(windows[i], &left, &top, &right, &bottom);
        glfwSetWindowPos(windows[i],
                         100 + (i & 1) * (200 + left + right),
                         100 + (i >> 1) * (200 + top + bottom));
    }

    for (i = 0; i < 4; i++)
        glfwShowWindow(windows[i]);

    while (running)
    {
        for (i = 0; i < 4; i++)
        {
            glfwMakeContextCurrent(windows[i]);
            glClear(GL_COLOR_BUFFER_BIT);
            glfwSwapBuffers(windows[i]);

            if (glfwWindowShouldClose(windows[i]))
                running = GL_FALSE;
        }

        glfwPollEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
