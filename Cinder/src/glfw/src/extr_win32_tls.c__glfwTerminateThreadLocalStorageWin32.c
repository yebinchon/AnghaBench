
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; scalar_t__ allocated; } ;
struct TYPE_4__ {TYPE_1__ win32_tls; } ;


 int TlsFree (int ) ;
 TYPE_2__ _glfw ;

void _glfwTerminateThreadLocalStorageWin32(void)
{
    if (_glfw.win32_tls.allocated)
        TlsFree(_glfw.win32_tls.context);
}
