
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
 int GL_TRIANGLES ;
 int error_callback ;
 int exit (int ) ;
 int glBegin (int ) ;
 int glClear (int ) ;
 int glColor3f (float,float,float) ;
 int glEnd () ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glOrtho (float,float,float,float,float,float) ;
 int glRotatef (float,float,float,float) ;
 int glVertex3f (float,float,float) ;
 int glViewport (int ,int ,int,int) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwDestroyWindow (int *) ;
 int glfwGetFramebufferSize (int *,int*,int*) ;
 scalar_t__ glfwGetTime () ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;

int main(void)
{
    GLFWwindow* window;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    window = glfwCreateWindow(640, 480, "Simple example", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    glfwSetKeyCallback(window, key_callback);

    while (!glfwWindowShouldClose(window))
    {
        float ratio;
        int width, height;

        glfwGetFramebufferSize(window, &width, &height);
        ratio = width / (float) height;

        glViewport(0, 0, width, height);
        glClear(GL_COLOR_BUFFER_BIT);

        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        glOrtho(-ratio, ratio, -1.f, 1.f, 1.f, -1.f);
        glMatrixMode(GL_MODELVIEW);

        glLoadIdentity();
        glRotatef((float) glfwGetTime() * 50.f, 0.f, 0.f, 1.f);

        glBegin(GL_TRIANGLES);
        glColor3f(1.f, 0.f, 0.f);
        glVertex3f(-0.6f, -0.4f, 0.f);
        glColor3f(0.f, 1.f, 0.f);
        glVertex3f(0.6f, -0.4f, 0.f);
        glColor3f(0.f, 0.f, 1.f);
        glVertex3f(0.f, 0.6f, 0.f);
        glEnd();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwDestroyWindow(window);

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
