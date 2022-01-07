
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int glfwDestroyWindow (int *) ;
 double glfwGetTime () ;
 int printf (char*,double) ;

__attribute__((used)) static void close_window(GLFWwindow* window)
{
    double base = glfwGetTime();
    glfwDestroyWindow(window);
    printf("Closing window took %0.3f seconds\n", glfwGetTime() - base);
}
