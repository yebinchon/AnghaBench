
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;
typedef int GLFWmonitor ;


 double gamma_value ;
 int * glfwGetPrimaryMonitor () ;
 int * glfwGetWindowMonitor (int *) ;
 int glfwSetGamma (int *,double) ;
 int printf (char*,double) ;

__attribute__((used)) static void set_gamma(GLFWwindow* window, float value)
{
    GLFWmonitor* monitor = glfwGetWindowMonitor(window);
    if (!monitor)
        monitor = glfwGetPrimaryMonitor();

    gamma_value = value;
    printf("Gamma: %f\n", gamma_value);
    glfwSetGamma(monitor, gamma_value);
}
