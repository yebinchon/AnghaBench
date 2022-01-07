
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * display; int * im; int clipboardString; scalar_t__ cursor; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef scalar_t__ Cursor ;


 int XCloseDisplay (int *) ;
 int XCloseIM (int *) ;
 int XFreeCursor (int *,scalar_t__) ;
 TYPE_2__ _glfw ;
 int _glfwTerminateContextAPI () ;
 int _glfwTerminateJoysticks () ;
 int free (int ) ;

void _glfwPlatformTerminate(void)
{
    if (_glfw.x11.cursor)
    {
        XFreeCursor(_glfw.x11.display, _glfw.x11.cursor);
        _glfw.x11.cursor = (Cursor) 0;
    }

    free(_glfw.x11.clipboardString);

    if (_glfw.x11.im)
    {
        XCloseIM(_glfw.x11.im);
        _glfw.x11.im = ((void*)0);
    }

    _glfwTerminateJoysticks();

    if (_glfw.x11.display)
    {
        XCloseDisplay(_glfw.x11.display);
        _glfw.x11.display = ((void*)0);
    }



    _glfwTerminateContextAPI();
}
