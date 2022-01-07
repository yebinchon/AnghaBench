
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * handle; int * dc; } ;
struct TYPE_7__ {TYPE_1__ wgl; } ;
struct TYPE_8__ {TYPE_2__ context; } ;
typedef TYPE_3__ _GLFWwindow ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformSetCurrentContext (TYPE_3__*) ;
 scalar_t__ wglMakeCurrent (int *,int *) ;

__attribute__((used)) static void makeContextCurrentWGL(_GLFWwindow* window)
{
    if (window)
    {
        if (wglMakeCurrent(window->context.wgl.dc, window->context.wgl.handle))
            _glfwPlatformSetCurrentContext(window);
        else
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "WGL: Failed to make context current");
            _glfwPlatformSetCurrentContext(((void*)0));
        }
    }
    else
    {
        if (!wglMakeCurrent(((void*)0), ((void*)0)))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "WGL: Failed to clear current context");
        }

        _glfwPlatformSetCurrentContext(((void*)0));
    }
}
