
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int monitor; } ;
struct TYPE_4__ {TYPE_1__ callbacks; } ;
typedef int GLFWmonitorfun ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _GLFW_SWAP_POINTERS (int ,int ) ;
 TYPE_2__ _glfw ;

GLFWmonitorfun glfwSetMonitorCallback(GLFWmonitorfun cbfun)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));
    _GLFW_SWAP_POINTERS(_glfw.callbacks.monitor, cbfun);
    return cbfun;
}
