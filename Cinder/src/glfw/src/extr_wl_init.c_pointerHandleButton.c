
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wl_pointer {int dummy; } ;
typedef int _GLFWwindow ;
struct TYPE_4__ {int modifiers; } ;
struct TYPE_5__ {TYPE_1__ xkb; int * pointerFocus; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;


 scalar_t__ BTN_LEFT ;
 int GLFW_PRESS ;
 int GLFW_RELEASE ;
 scalar_t__ WL_POINTER_BUTTON_STATE_PRESSED ;
 TYPE_3__ _glfw ;
 int _glfwInputMouseClick (int *,int,int ,int ) ;

__attribute__((used)) static void pointerHandleButton(void* data,
                                struct wl_pointer* wl_pointer,
                                uint32_t serial,
                                uint32_t time,
                                uint32_t button,
                                uint32_t state)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;
    int glfwButton;

    if (!window)
        return;



    glfwButton = button - BTN_LEFT;

    _glfwInputMouseClick(window,
                         glfwButton,
                         state == WL_POINTER_BUTTON_STATE_PRESSED
                                ? GLFW_PRESS
                                : GLFW_RELEASE,
                         _glfw.wl.xkb.modifiers);
}
