
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int currentCursor; } ;
struct TYPE_6__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int _glfwPlatformSetCursor (TYPE_2__*,int ) ;

void _glfwPlatformApplyCursorMode(_GLFWwindow* window)
{
    _glfwPlatformSetCursor(window, window->wl.currentCursor);
}
