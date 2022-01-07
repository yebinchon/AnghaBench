
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {int handle; int overrideRedirect; } ;
struct TYPE_18__ {TYPE_4__ x11; TYPE_2__* monitor; } ;
typedef TYPE_6__ _GLFWwindow ;
struct TYPE_19__ {int override_redirect; } ;
typedef TYPE_7__ XSetWindowAttributes ;
struct TYPE_15__ {scalar_t__ available; } ;
struct TYPE_17__ {int NET_WM_STATE_FULLSCREEN; scalar_t__ NET_WM_BYPASS_COMPOSITOR; int display; scalar_t__ NET_WM_STATE; scalar_t__ NET_WM_FULLSCREEN_MONITORS; TYPE_3__ xinerama; } ;
struct TYPE_13__ {int index; } ;
struct TYPE_14__ {TYPE_1__ x11; } ;
struct TYPE_12__ {TYPE_5__ x11; } ;


 int CWOverrideRedirect ;
 int False ;
 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int PropModeReplace ;
 int True ;
 int XA_CARDINAL ;
 int XChangeProperty (int ,int ,scalar_t__,int ,int,int ,unsigned char*,int) ;
 int XChangeWindowAttributes (int ,int ,int ,TYPE_7__*) ;
 int XDeleteProperty (int ,int ,scalar_t__) ;
 int _NET_WM_STATE_ADD ;
 int _NET_WM_STATE_REMOVE ;
 TYPE_10__ _glfw ;
 int sendEventToWM (TYPE_6__*,scalar_t__,int,int,int,int,int ) ;

__attribute__((used)) static void updateWindowMode(_GLFWwindow* window)
{
    if (window->monitor)
    {
        if (_glfw.x11.xinerama.available &&
            _glfw.x11.NET_WM_FULLSCREEN_MONITORS)
        {
            sendEventToWM(window,
                          _glfw.x11.NET_WM_FULLSCREEN_MONITORS,
                          window->monitor->x11.index,
                          window->monitor->x11.index,
                          window->monitor->x11.index,
                          window->monitor->x11.index,
                          0);
        }

        if (_glfw.x11.NET_WM_STATE && _glfw.x11.NET_WM_STATE_FULLSCREEN)
        {
            sendEventToWM(window,
                          _glfw.x11.NET_WM_STATE,
                          _NET_WM_STATE_ADD,
                          _glfw.x11.NET_WM_STATE_FULLSCREEN,
                          0, 1, 0);
        }
        else
        {
            XSetWindowAttributes attributes;
            attributes.override_redirect = True;
            XChangeWindowAttributes(_glfw.x11.display,
                                    window->x11.handle,
                                    CWOverrideRedirect,
                                    &attributes);

            window->x11.overrideRedirect = GLFW_TRUE;
        }


        {
            const unsigned long value = 1;

            XChangeProperty(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.NET_WM_BYPASS_COMPOSITOR, XA_CARDINAL, 32,
                            PropModeReplace, (unsigned char*) &value, 1);
        }
    }
    else
    {
        if (_glfw.x11.xinerama.available &&
            _glfw.x11.NET_WM_FULLSCREEN_MONITORS)
        {
            XDeleteProperty(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.NET_WM_FULLSCREEN_MONITORS);
        }

        if (_glfw.x11.NET_WM_STATE && _glfw.x11.NET_WM_STATE_FULLSCREEN)
        {
            sendEventToWM(window,
                          _glfw.x11.NET_WM_STATE,
                          _NET_WM_STATE_REMOVE,
                          _glfw.x11.NET_WM_STATE_FULLSCREEN,
                          0, 1, 0);
        }
        else
        {
            XSetWindowAttributes attributes;
            attributes.override_redirect = False;
            XChangeWindowAttributes(_glfw.x11.display,
                                    window->x11.handle,
                                    CWOverrideRedirect,
                                    &attributes);

            window->x11.overrideRedirect = GLFW_FALSE;
        }


        {
            XDeleteProperty(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.NET_WM_BYPASS_COMPOSITOR);
        }
    }
}
