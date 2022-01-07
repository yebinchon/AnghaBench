
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* js; } ;
struct TYPE_6__ {TYPE_2__ linux_js; } ;
struct TYPE_4__ {int buttonCount; unsigned char const* buttons; } ;


 TYPE_3__ _glfw ;
 int pollJoystickEvents () ;

const unsigned char* _glfwPlatformGetJoystickButtons(int joy, int* count)
{
    pollJoystickEvents();

    *count = _glfw.linux_js.js[joy].buttonCount;
    return _glfw.linux_js.js[joy].buttons;
}
