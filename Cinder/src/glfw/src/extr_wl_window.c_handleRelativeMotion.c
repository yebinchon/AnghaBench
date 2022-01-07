
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct zwp_relative_pointer_v1 {int dummy; } ;
struct TYPE_3__ {scalar_t__ cursorMode; scalar_t__ virtualCursorPosY; scalar_t__ virtualCursorPosX; } ;
typedef TYPE_1__ _GLFWwindow ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 int _glfwInputCursorPos (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ wl_fixed_to_double (int ) ;

__attribute__((used)) static void handleRelativeMotion(void* data,
                                 struct zwp_relative_pointer_v1* pointer,
                                 uint32_t timeHi,
                                 uint32_t timeLo,
                                 wl_fixed_t dx,
                                 wl_fixed_t dy,
                                 wl_fixed_t dxUnaccel,
                                 wl_fixed_t dyUnaccel)
{
    _GLFWwindow* window = data;

    if (window->cursorMode != GLFW_CURSOR_DISABLED)
        return;

    _glfwInputCursorPos(window,
                        window->virtualCursorPosX + wl_fixed_to_double(dxUnaccel),
                        window->virtualCursorPosY + wl_fixed_to_double(dyUnaccel));
}
