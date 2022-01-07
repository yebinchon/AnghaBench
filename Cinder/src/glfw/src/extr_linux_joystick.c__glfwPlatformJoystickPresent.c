
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWjoystickLinux ;
struct TYPE_3__ {int * js; } ;
struct TYPE_4__ {TYPE_1__ linux_js; } ;


 TYPE_2__ _glfw ;
 int pollJoystickEvents (int *) ;

int _glfwPlatformJoystickPresent(int joy)
{
    _GLFWjoystickLinux* js = _glfw.linux_js.js + joy;
    return pollJoystickEvents(js);
}
