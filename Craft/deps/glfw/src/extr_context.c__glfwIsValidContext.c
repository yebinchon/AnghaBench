
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ major; scalar_t__ minor; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {scalar_t__ major; scalar_t__ minor; } ;
typedef TYPE_3__ _GLFWctxconfig ;
typedef int GLboolean ;


 int GLFW_VERSION_UNAVAILABLE ;
 int GL_FALSE ;
 int GL_TRUE ;
 int _glfwInputError (int ,int *) ;
 TYPE_2__* _glfwPlatformGetCurrentContext () ;

GLboolean _glfwIsValidContext(const _GLFWctxconfig* ctxconfig)
{
    _GLFWwindow* window = _glfwPlatformGetCurrentContext();

    if (window->context.major < ctxconfig->major ||
        (window->context.major == ctxconfig->major &&
         window->context.minor < ctxconfig->minor))
    {







        _glfwInputError(GLFW_VERSION_UNAVAILABLE, ((void*)0));
        return GL_FALSE;
    }

    return GL_TRUE;
}
