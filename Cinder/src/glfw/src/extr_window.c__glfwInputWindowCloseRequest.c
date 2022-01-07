
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* close ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ callbacks; int closed; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;


 int GLFW_TRUE ;
 int stub1 (int *) ;

void _glfwInputWindowCloseRequest(_GLFWwindow* window)
{
    window->closed = GLFW_TRUE;

    if (window->callbacks.close)
        window->callbacks.close((GLFWwindow*) window);
}
