
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;
typedef int GLFWmonitor ;


 int framebuffer_size_callback ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 char* glfwGetMonitorName (int *) ;
 double glfwGetTime () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetWindowCloseCallback (int *,int ) ;
 int glfwSwapInterval (int) ;
 int key_callback ;
 int printf (char*,...) ;
 int window_close_callback ;

__attribute__((used)) static GLFWwindow* open_window(int width, int height, GLFWmonitor* monitor)
{
    double base;
    GLFWwindow* window;

    base = glfwGetTime();

    window = glfwCreateWindow(width, height, "Window Re-opener", monitor, ((void*)0));
    if (!window)
        return ((void*)0);

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetWindowCloseCallback(window, window_close_callback);
    glfwSetKeyCallback(window, key_callback);

    if (monitor)
    {
        printf("Opening full screen window on monitor %s took %0.3f seconds\n",
               glfwGetMonitorName(monitor),
               glfwGetTime() - base);
    }
    else
    {
        printf("Opening regular window took %0.3f seconds\n",
               glfwGetTime() - base);
    }

    return window;
}
