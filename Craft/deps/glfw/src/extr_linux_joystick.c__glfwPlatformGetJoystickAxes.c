
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* js; } ;
struct TYPE_6__ {TYPE_2__ linux_js; } ;
struct TYPE_4__ {int axisCount; float const* axes; } ;


 TYPE_3__ _glfw ;
 int pollJoystickEvents () ;

const float* _glfwPlatformGetJoystickAxes(int joy, int* count)
{
    pollJoystickEvents();

    *count = _glfw.linux_js.js[joy].axisCount;
    return _glfw.linux_js.js[joy].axes;
}
