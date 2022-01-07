
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int close; } ;
struct TYPE_4__ {TYPE_1__ callbacks; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindowclosefun ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _GLFW_SWAP_POINTERS (int ,int ) ;

GLFWwindowclosefun glfwSetWindowCloseCallback(GLFWwindow* handle,
                                                      GLFWwindowclosefun cbfun)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));
    _GLFW_SWAP_POINTERS(window->callbacks.close, cbfun);
    return cbfun;
}
