
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int monitor; } ;
typedef TYPE_1__ _GLFWwindow ;


 int _glfwRestoreVideoMode (int ) ;

__attribute__((used)) static void leaveFullscreenMode(_GLFWwindow* window)
{
    _glfwRestoreVideoMode(window->monitor);
}
