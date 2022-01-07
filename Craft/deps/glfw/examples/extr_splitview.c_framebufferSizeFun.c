
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int do_redraw ;
 int height ;
 int width ;

__attribute__((used)) static void framebufferSizeFun(GLFWwindow* window, int w, int h)
{
    width = w;
    height = h > 0 ? h : 1;
    do_redraw = 1;
}
