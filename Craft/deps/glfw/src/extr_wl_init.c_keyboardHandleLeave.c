
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_keyboard {int dummy; } ;
typedef int _GLFWwindow ;
struct TYPE_3__ {int * keyboardFocus; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int GL_FALSE ;
 TYPE_2__ _glfw ;
 int _glfwInputWindowFocus (int *,int ) ;

__attribute__((used)) static void keyboardHandleLeave(void* data,
                                struct wl_keyboard* keyboard,
                                uint32_t serial,
                                struct wl_surface* surface)
{
    _GLFWwindow* window = _glfw.wl.keyboardFocus;

    if (!window)
        return;

    _glfw.wl.keyboardFocus = ((void*)0);
    _glfwInputWindowFocus(window, GL_FALSE);
}
