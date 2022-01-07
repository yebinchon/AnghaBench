
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; scalar_t__ allocated; } ;
struct TYPE_4__ {TYPE_1__ posix_tls; } ;


 TYPE_2__ _glfw ;
 int pthread_key_delete (int ) ;

void _glfwTerminateThreadLocalStoragePOSIX(void)
{
    if (_glfw.posix_tls.allocated)
        pthread_key_delete(_glfw.posix_tls.context);
}
