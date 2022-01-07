
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int windowListHead; } ;


 int _GLFW_REQUIRE_INIT () ;
 TYPE_1__ _glfw ;
 int _glfwPlatformWaitEvents () ;

void glfwWaitEvents(void)
{
    _GLFW_REQUIRE_INIT();

    if (!_glfw.windowListHead)
        return;

    _glfwPlatformWaitEvents();
}
