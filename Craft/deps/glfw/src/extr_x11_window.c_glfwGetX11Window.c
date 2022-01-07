
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int Window ;
typedef int GLFWwindow ;


 int None ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;

Window glfwGetX11Window(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFW_REQUIRE_INIT_OR_RETURN(None);
    return window->x11.handle;
}
