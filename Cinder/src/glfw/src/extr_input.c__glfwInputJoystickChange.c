
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* joystick ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ callbacks; } ;


 TYPE_2__ _glfw ;
 int stub1 (int,int) ;

void _glfwInputJoystickChange(int joy, int event)
{
    if (_glfw.callbacks.joystick)
        _glfw.callbacks.joystick(joy, event);
}
