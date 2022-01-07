
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;
typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_SAMPLES ;
 int GLFW_VISIBLE ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_MODELVIEW ;
 int GL_MULTISAMPLE_ARB ;
 int GL_PROJECTION ;
 int GL_SAMPLES_ARB ;
 int atoi (int ) ;
 int error_callback ;
 int exit (int ) ;
 int framebuffer_size_callback ;
 int getopt (int,char**,char*) ;
 int glClear (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glGetIntegerv (int ,int*) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glOrtho (float,float,float,float,float,float) ;
 int glRectf (float,float,float,float) ;
 int glRotatef (int ,float,float,float) ;
 int glTranslatef (float,float,float) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwExtensionSupported (char*) ;
 int glfwGetTime () ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwShowWindow (int *) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int) ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 int optarg ;
 int printf (char*,...) ;
 int usage () ;

int main(int argc, char** argv)
{
    int ch, samples = 4;
    GLFWwindow* window;

    while ((ch = getopt(argc, argv, "hs:")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);
            case 's':
                samples = atoi(optarg);
                break;
            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    if (samples)
        printf("Requesting MSAA with %i samples\n", samples);
    else
        printf("Requesting that MSAA not be available\n");

    glfwWindowHint(GLFW_SAMPLES, samples);
    glfwWindowHint(GLFW_VISIBLE, GL_FALSE);

    window = glfwCreateWindow(800, 400, "Aliasing Detector", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwSetKeyCallback(window, key_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    if (!glfwExtensionSupported("GL_ARB_multisample"))
    {
        printf("GL_ARB_multisample extension not supported\n");

        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwShowWindow(window);

    glGetIntegerv(GL_SAMPLES_ARB, &samples);
    if (samples)
        printf("Context reports MSAA is available with %i samples\n", samples);
    else
        printf("Context reports MSAA is unavailable\n");

    glMatrixMode(GL_PROJECTION);
    glOrtho(0.f, 1.f, 0.f, 0.5f, 0.f, 1.f);
    glMatrixMode(GL_MODELVIEW);

    while (!glfwWindowShouldClose(window))
    {
        GLfloat time = (GLfloat) glfwGetTime();

        glClear(GL_COLOR_BUFFER_BIT);

        glLoadIdentity();
        glTranslatef(0.25f, 0.25f, 0.f);
        glRotatef(time, 0.f, 0.f, 1.f);

        glDisable(GL_MULTISAMPLE_ARB);
        glRectf(-0.15f, -0.15f, 0.15f, 0.15f);

        glLoadIdentity();
        glTranslatef(0.75f, 0.25f, 0.f);
        glRotatef(time, 0.f, 0.f, 1.f);

        glEnable(GL_MULTISAMPLE_ARB);
        glRectf(-0.15f, -0.15f, 0.15f, 0.15f);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
