
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
typedef int _GLFWwindow ;
struct TYPE_3__ {int * pointerFocus; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;




 TYPE_2__ _glfw ;
 int _glfwInputScroll (int *,double,double) ;
 double wl_fixed_to_double (int ) ;

__attribute__((used)) static void pointerHandleAxis(void* data,
                              struct wl_pointer* wl_pointer,
                              uint32_t time,
                              uint32_t axis,
                              wl_fixed_t value)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;
    double scroll_factor;
    double x, y;

    if (!window)
        return;




    scroll_factor = 1.0/10.0;

    switch (axis)
    {
        case 129:
            x = wl_fixed_to_double(value) * scroll_factor;
            y = 0.0;
            break;
        case 128:
            x = 0.0;
            y = wl_fixed_to_double(value) * scroll_factor;
            break;
        default:
            break;
    }

    _glfwInputScroll(window, x, y);
}
