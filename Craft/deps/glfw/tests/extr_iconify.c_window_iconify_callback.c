
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 double glfwGetTime () ;
 int printf (char*,double,char*) ;

__attribute__((used)) static void window_iconify_callback(GLFWwindow* window, int iconified)
{
    printf("%0.2f Window %s\n",
           glfwGetTime(),
           iconified ? "iconified" : "restored");
}
