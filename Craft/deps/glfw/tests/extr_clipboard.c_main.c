
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int error_callback ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int framebuffer_size_callback ;
 int getopt (int,char**,char*) ;
 int glClear (int ) ;
 int glClearColor (float,float,float,int ) ;
 int glColor3f (float,float,float) ;
 int glMatrixMode (int ) ;
 int glOrtho (float,float,float,float,float,float) ;
 int glRectf (float,float,float,float) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 int stderr ;
 int usage () ;

int main(int argc, char** argv)
{
    int ch;
    GLFWwindow* window;

    while ((ch = getopt(argc, argv, "h")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
    {
        fprintf(stderr, "Failed to initialize GLFW\n");
        exit(EXIT_FAILURE);
    }

    window = glfwCreateWindow(200, 200, "Clipboard Test", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();

        fprintf(stderr, "Failed to open GLFW window\n");
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    glfwSetKeyCallback(window, key_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    glMatrixMode(GL_PROJECTION);
    glOrtho(-1.f, 1.f, -1.f, 1.f, -1.f, 1.f);
    glMatrixMode(GL_MODELVIEW);

    glClearColor(0.5f, 0.5f, 0.5f, 0);

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        glColor3f(0.8f, 0.2f, 0.4f);
        glRectf(-0.5f, -0.5f, 0.5f, 0.5f);

        glfwSwapBuffers(window);
        glfwWaitEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
