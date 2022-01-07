
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XEvent ;
struct TYPE_3__ {int display; scalar_t__ disabledCursorWindow; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int XFlush (int ) ;
 int XNextEvent (int ,int *) ;
 int XPending (int ) ;
 TYPE_2__ _glfw ;
 int _glfwPollJoystickEvents () ;
 int centerCursor (scalar_t__) ;
 int processEvent (int *) ;

void _glfwPlatformPollEvents(void)
{
    _glfwPollJoystickEvents();

    int count = XPending(_glfw.x11.display);
    while (count--)
    {
        XEvent event;
        XNextEvent(_glfw.x11.display, &event);
        processEvent(&event);
    }

    if (_glfw.x11.disabledCursorWindow)
        centerCursor(_glfw.x11.disabledCursorWindow);

    XFlush(_glfw.x11.display);
}
