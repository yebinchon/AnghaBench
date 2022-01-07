
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_3__ {int context; } ;
struct TYPE_4__ {TYPE_1__ posix_tls; } ;


 TYPE_2__ _glfw ;
 int pthread_setspecific (int ,int *) ;

void _glfwSetContextTLS(_GLFWwindow* context)
{
    pthread_setspecific(_glfw.posix_tls.context, context);
}
