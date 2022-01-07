
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
struct TYPE_4__ {TYPE_1__ posix_tls; } ;


 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 scalar_t__ pthread_key_create (int *,int *) ;

int _glfwCreateContextTLS(void)
{
    if (pthread_key_create(&_glfw.posix_tls.context, ((void*)0)) != 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "POSIX: Failed to create context TLS");
        return GL_FALSE;
    }

    return GL_TRUE;
}
