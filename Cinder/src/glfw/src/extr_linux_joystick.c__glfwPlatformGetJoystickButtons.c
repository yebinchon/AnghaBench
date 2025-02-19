
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buttonCount; unsigned char const* buttons; } ;
typedef TYPE_2__ _GLFWjoystickLinux ;
struct TYPE_5__ {TYPE_2__* js; } ;
struct TYPE_7__ {TYPE_1__ linux_js; } ;


 TYPE_4__ _glfw ;
 int pollJoystickEvents (TYPE_2__*) ;

const unsigned char* _glfwPlatformGetJoystickButtons(int joy, int* count)
{
    _GLFWjoystickLinux* js = _glfw.linux_js.js + joy;
    if (!pollJoystickEvents(js))
        return ((void*)0);

    *count = js->buttonCount;
    return js->buttons;
}
