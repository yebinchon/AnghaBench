
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objects; int buttons; int axes; int name; scalar_t__ device; } ;
typedef TYPE_1__ _GLFWjoystickWin32 ;
struct TYPE_6__ {TYPE_1__* win32_js; } ;


 int GLFW_DISCONNECTED ;
 int IDirectInputDevice8_Release (scalar_t__) ;
 int IDirectInputDevice8_Unacquire (scalar_t__) ;
 TYPE_4__ _glfw ;
 int _glfwInputJoystickChange (int,int ) ;
 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void closeJoystick(_GLFWjoystickWin32* js)
{
    if (js->device)
    {
        IDirectInputDevice8_Unacquire(js->device);
        IDirectInputDevice8_Release(js->device);
    }

    free(js->name);
    free(js->axes);
    free(js->buttons);
    free(js->objects);
    memset(js, 0, sizeof(_GLFWjoystickWin32));

    _glfwInputJoystickChange((int) (js - _glfw.win32_js), GLFW_DISCONNECTED);
}
