
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated; int context; } ;
struct TYPE_4__ {TYPE_1__ posix_tls; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 scalar_t__ pthread_key_create (int *,int *) ;

GLFWbool _glfwInitThreadLocalStoragePOSIX(void)
{
    if (pthread_key_create(&_glfw.posix_tls.context, ((void*)0)) != 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "POSIX: Failed to create context TLS");
        return GLFW_FALSE;
    }

    _glfw.posix_tls.allocated = GLFW_TRUE;
    return GLFW_TRUE;
}
