
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * GLFWglproc ;


 int GLFW_NO_CURRENT_CONTEXT ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _glfwInputError (int ,int *) ;
 int _glfwPlatformGetCurrentContext () ;
 int * _glfwPlatformGetProcAddress (char const*) ;

GLFWglproc glfwGetProcAddress(const char* procname)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (!_glfwPlatformGetCurrentContext())
    {
        _glfwInputError(GLFW_NO_CURRENT_CONTEXT, ((void*)0));
        return ((void*)0);
    }

    return _glfwPlatformGetProcAddress(procname);
}
