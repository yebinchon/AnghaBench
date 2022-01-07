
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int printf (char*) ;

__attribute__((used)) static void window_close_callback(GLFWwindow* window)
{
    printf("Close callback triggered\n");
}
