
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GLFW_VISIBLE ;
 int GL_FALSE ;
 int HEIGHT ;
 int WIDTH ;
 int * glfwCreateWindow (int ,int ,char const*,int *,int *) ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetWindowPos (int *,int,int) ;
 int glfwShowWindow (int *) ;
 int glfwSwapInterval (int) ;
 int glfwWindowHint (int ,int ) ;
 int key_callback ;

__attribute__((used)) static GLFWwindow* open_window(const char* title, GLFWwindow* share, int posX, int posY)
{
    GLFWwindow* window;

    glfwWindowHint(GLFW_VISIBLE, GL_FALSE);
    window = glfwCreateWindow(WIDTH, HEIGHT, title, ((void*)0), share);
    if (!window)
        return ((void*)0);

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    glfwSetWindowPos(window, posX, posY);
    glfwShowWindow(window);

    glfwSetKeyCallback(window, key_callback);

    return window;
}
