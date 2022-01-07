
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_20__ {int handle; } ;
struct TYPE_22__ {TYPE_4__ x11; TYPE_10__* monitor; int videoMode; } ;
typedef TYPE_6__ _GLFWwindow ;
struct TYPE_23__ {int height; int width; } ;
struct TYPE_18__ {scalar_t__ available; } ;
struct TYPE_17__ {scalar_t__ count; int exposure; int blanking; int interval; int timeout; } ;
struct TYPE_21__ {int NET_WM_STATE_FULLSCREEN; scalar_t__ NET_WM_STATE; int display; scalar_t__ NET_ACTIVE_WINDOW; scalar_t__ NET_WM_FULLSCREEN_MONITORS; TYPE_2__ xinerama; scalar_t__ NET_WM_BYPASS_COMPOSITOR; TYPE_1__ saver; } ;
struct TYPE_19__ {int index; } ;
struct TYPE_16__ {TYPE_5__ x11; } ;
struct TYPE_15__ {TYPE_3__ x11; } ;
typedef TYPE_7__ GLFWvidmode ;


 int CurrentTime ;
 int DefaultExposures ;
 int DontPreferBlanking ;
 int PropModeReplace ;
 int RevertToParent ;
 int XA_CARDINAL ;
 int XChangeProperty (int ,int ,scalar_t__,int ,int,int ,unsigned char*,int) ;
 int XGetScreenSaver (int ,int *,int *,int *,int *) ;
 int XMoveResizeWindow (int ,int ,int,int,int ,int ) ;
 int XRaiseWindow (int ,int ) ;
 int XSetInputFocus (int ,int ,int ,int ) ;
 int XSetScreenSaver (int ,int ,int ,int ,int ) ;
 int _NET_WM_STATE_ADD ;
 TYPE_14__ _glfw ;
 int _glfwPlatformGetMonitorPos (TYPE_10__*,int*,int*) ;
 int _glfwPlatformGetVideoMode (TYPE_10__*,TYPE_7__*) ;
 int _glfwSetVideoMode (TYPE_10__*,int *) ;
 int sendEventToWM (TYPE_6__*,scalar_t__,int,int,int,int,int ) ;

__attribute__((used)) static void enterFullscreenMode(_GLFWwindow* window)
{
    if (_glfw.x11.saver.count == 0)
    {

        XGetScreenSaver(_glfw.x11.display,
                        &_glfw.x11.saver.timeout,
                        &_glfw.x11.saver.interval,
                        &_glfw.x11.saver.blanking,
                        &_glfw.x11.saver.exposure);


        XSetScreenSaver(_glfw.x11.display, 0, 0, DontPreferBlanking,
                        DefaultExposures);
    }

    _glfw.x11.saver.count++;

    _glfwSetVideoMode(window->monitor, &window->videoMode);

    if (_glfw.x11.NET_WM_BYPASS_COMPOSITOR)
    {
        const unsigned long value = 1;

        XChangeProperty(_glfw.x11.display, window->x11.handle,
                        _glfw.x11.NET_WM_BYPASS_COMPOSITOR, XA_CARDINAL, 32,
                        PropModeReplace, (unsigned char*) &value, 1);
    }


    {
        int xpos, ypos;
        GLFWvidmode mode;

        _glfwPlatformGetMonitorPos(window->monitor, &xpos, &ypos);
        _glfwPlatformGetVideoMode(window->monitor, &mode);

        XMoveResizeWindow(_glfw.x11.display, window->x11.handle,
                          xpos, ypos, mode.width, mode.height);
    }

    if (_glfw.x11.xinerama.available && _glfw.x11.NET_WM_FULLSCREEN_MONITORS)
    {
        sendEventToWM(window,
                      _glfw.x11.NET_WM_FULLSCREEN_MONITORS,
                      window->monitor->x11.index,
                      window->monitor->x11.index,
                      window->monitor->x11.index,
                      window->monitor->x11.index,
                      0);
    }

    if (_glfw.x11.NET_ACTIVE_WINDOW)
    {



        sendEventToWM(window, _glfw.x11.NET_ACTIVE_WINDOW, 1, 0, 0, 0, 0);
    }
    else
    {
        XRaiseWindow(_glfw.x11.display, window->x11.handle);
        XSetInputFocus(_glfw.x11.display, window->x11.handle,
                       RevertToParent, CurrentTime);
    }

    if (_glfw.x11.NET_WM_STATE && _glfw.x11.NET_WM_STATE_FULLSCREEN)
    {



        sendEventToWM(window,
                      _glfw.x11.NET_WM_STATE,
                      _NET_WM_STATE_ADD,
                      _glfw.x11.NET_WM_STATE_FULLSCREEN,
                      0, 1, 0);
    }
}
