
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int handle; } ;
struct TYPE_14__ {TYPE_1__ x11; int resizable; scalar_t__ monitor; int videoMode; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_15__ {int flags; int min_width; int max_width; int min_height; int max_height; } ;
typedef TYPE_4__ XSizeHints ;
struct TYPE_13__ {int display; int NET_WM_STATE_FULLSCREEN; int NET_WM_STATE; } ;
struct TYPE_17__ {TYPE_2__ x11; } ;
struct TYPE_16__ {int width; int height; } ;
typedef TYPE_5__ GLFWvidmode ;


 int PMaxSize ;
 int PMinSize ;
 TYPE_4__* XAllocSizeHints () ;
 int XFlush (int ) ;
 int XFree (TYPE_4__*) ;
 int XResizeWindow (int ,int ,int,int) ;
 int XSetWMNormalHints (int ,int ,TYPE_4__*) ;
 TYPE_8__ _glfw ;
 int _glfwPlatformGetVideoMode (scalar_t__,TYPE_5__*) ;
 int _glfwSetVideoMode (scalar_t__,int *) ;

void _glfwPlatformSetWindowSize(_GLFWwindow* window, int width, int height)
{
    if (window->monitor)
    {
        _glfwSetVideoMode(window->monitor, &window->videoMode);

        if (!_glfw.x11.NET_WM_STATE || !_glfw.x11.NET_WM_STATE_FULLSCREEN)
        {
            GLFWvidmode mode;
            _glfwPlatformGetVideoMode(window->monitor, &mode);
            XResizeWindow(_glfw.x11.display, window->x11.handle,
                          mode.width, mode.height);
        }
    }
    else
    {
        if (!window->resizable)
        {


            XSizeHints* hints = XAllocSizeHints();

            hints->flags |= (PMinSize | PMaxSize);
            hints->min_width = hints->max_width = width;
            hints->min_height = hints->max_height = height;

            XSetWMNormalHints(_glfw.x11.display, window->x11.handle, hints);
            XFree(hints);
        }

        XResizeWindow(_glfw.x11.display, window->x11.handle, width, height);
    }

    XFlush(_glfw.x11.display);
}
