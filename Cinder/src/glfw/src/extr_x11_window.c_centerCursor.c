
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;


 int _glfwPlatformGetWindowSize (int *,int*,int*) ;
 int _glfwPlatformSetCursorPos (int *,int,int) ;

__attribute__((used)) static void centerCursor(_GLFWwindow* window)
{
    int width, height;
    _glfwPlatformGetWindowSize(window, &width, &height);
    _glfwPlatformSetCursorPos(window, width / 2.0, height / 2.0);
}
