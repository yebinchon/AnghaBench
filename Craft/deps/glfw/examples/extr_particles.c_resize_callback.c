
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int aspect_ratio ;
 int glViewport (int ,int ,int,int) ;

__attribute__((used)) static void resize_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
    aspect_ratio = height ? width / (float) height : 1.f;
}
