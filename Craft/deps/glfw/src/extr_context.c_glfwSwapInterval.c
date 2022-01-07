
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_NO_CURRENT_CONTEXT ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,int *) ;
 int _glfwPlatformGetCurrentContext () ;
 int _glfwPlatformSwapInterval (int) ;

void glfwSwapInterval(int interval)
{
    _GLFW_REQUIRE_INIT();

    if (!_glfwPlatformGetCurrentContext())
    {
        _glfwInputError(GLFW_NO_CURRENT_CONTEXT, ((void*)0));
        return;
    }

    _glfwPlatformSwapInterval(interval);
}
