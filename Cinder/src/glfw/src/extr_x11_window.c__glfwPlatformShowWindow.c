
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int handle; } ;
struct TYPE_10__ {TYPE_2__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_8__ {int display; } ;
struct TYPE_11__ {TYPE_1__ x11; } ;


 int XMapWindow (int ,int ) ;
 TYPE_7__ _glfw ;
 scalar_t__ _glfwPlatformWindowVisible (TYPE_3__*) ;
 int waitForVisibilityNotify (TYPE_3__*) ;

void _glfwPlatformShowWindow(_GLFWwindow* window)
{
    if (_glfwPlatformWindowVisible(window))
        return;

    XMapWindow(_glfw.x11.display, window->x11.handle);
    waitForVisibilityNotify(window);
}
