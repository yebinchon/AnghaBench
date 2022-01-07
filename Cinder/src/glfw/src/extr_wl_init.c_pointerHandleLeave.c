
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
typedef int _GLFWwindow ;
struct TYPE_3__ {int * pointerFocus; int pointerSerial; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int GLFW_FALSE ;
 TYPE_2__ _glfw ;
 int _glfwInputCursorEnter (int *,int ) ;

__attribute__((used)) static void pointerHandleLeave(void* data,
                               struct wl_pointer* pointer,
                               uint32_t serial,
                               struct wl_surface* surface)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;

    if (!window)
        return;

    _glfw.wl.pointerSerial = serial;
    _glfw.wl.pointerFocus = ((void*)0);
    _glfwInputCursorEnter(window, GLFW_FALSE);
}
