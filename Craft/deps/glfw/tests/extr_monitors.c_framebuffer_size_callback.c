
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int glViewport (int ,int ,int,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    printf("Framebuffer resized to %ix%i\n", width, height);

    glViewport(0, 0, width, height);
}
