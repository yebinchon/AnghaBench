
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* winmm_js; } ;
struct TYPE_3__ {int name; } ;


 int GLFW_JOYSTICK_LAST ;
 TYPE_2__ _glfw ;
 int free (int ) ;

void _glfwTerminateJoysticks(void)
{
    int i;

    for (i = 0; i < GLFW_JOYSTICK_LAST; i++)
        free(_glfw.winmm_js[i].name);
}
