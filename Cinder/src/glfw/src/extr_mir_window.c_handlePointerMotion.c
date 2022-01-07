
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int virtualCursorPosX; int virtualCursorPosY; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int MirPointerEvent ;


 int _glfwInputCursorPos (TYPE_1__*,int,int) ;
 int _glfwInputScroll (TYPE_1__*,int,int) ;
 int mir_pointer_axis_hscroll ;
 int mir_pointer_axis_vscroll ;
 int mir_pointer_axis_x ;
 int mir_pointer_axis_y ;
 int mir_pointer_event_axis_value (int const*,int ) ;

__attribute__((used)) static void handlePointerMotion(_GLFWwindow* window,
                                const MirPointerEvent* pointer_event)
{
    int current_x = window->virtualCursorPosX;
    int current_y = window->virtualCursorPosY;
    int x = mir_pointer_event_axis_value(pointer_event, mir_pointer_axis_x);
    int y = mir_pointer_event_axis_value(pointer_event, mir_pointer_axis_y);
    int dx = mir_pointer_event_axis_value(pointer_event, mir_pointer_axis_hscroll);
    int dy = mir_pointer_event_axis_value(pointer_event, mir_pointer_axis_vscroll);

    _glfwInputCursorPos(window, x, y);
    if (dx != 0 || dy != 0)
      _glfwInputScroll(window, dx, dy);
}
