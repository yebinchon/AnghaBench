
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ handle; scalar_t__ colormap; int * ic; } ;
struct TYPE_11__ {TYPE_1__ x11; scalar_t__ monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef scalar_t__ Window ;
struct TYPE_10__ {int display; int context; int CLIPBOARD; } ;
struct TYPE_12__ {TYPE_2__ x11; } ;
typedef scalar_t__ Colormap ;


 int XDeleteContext (int ,scalar_t__,int ) ;
 int XDestroyIC (int *) ;
 int XDestroyWindow (int ,scalar_t__) ;
 int XFlush (int ) ;
 int XFreeColormap (int ,scalar_t__) ;
 scalar_t__ XGetSelectionOwner (int ,int ) ;
 int XUnmapWindow (int ,scalar_t__) ;
 TYPE_8__ _glfw ;
 int _glfwDestroyContext (TYPE_3__*) ;
 int leaveFullscreenMode (TYPE_3__*) ;
 int pushSelectionToManager (TYPE_3__*) ;

void _glfwPlatformDestroyWindow(_GLFWwindow* window)
{
    if (window->monitor)
        leaveFullscreenMode(window);

    if (window->x11.ic)
    {
        XDestroyIC(window->x11.ic);
        window->x11.ic = ((void*)0);
    }

    _glfwDestroyContext(window);

    if (window->x11.handle)
    {
        if (XGetSelectionOwner(_glfw.x11.display, _glfw.x11.CLIPBOARD) ==
            window->x11.handle)
        {
            pushSelectionToManager(window);
        }

        XDeleteContext(_glfw.x11.display, window->x11.handle, _glfw.x11.context);
        XUnmapWindow(_glfw.x11.display, window->x11.handle);
        XDestroyWindow(_glfw.x11.display, window->x11.handle);
        window->x11.handle = (Window) 0;
    }

    if (window->x11.colormap)
    {
        XFreeColormap(_glfw.x11.display, window->x11.colormap);
        window->x11.colormap = (Colormap) 0;
    }

    XFlush(_glfw.x11.display);
}
