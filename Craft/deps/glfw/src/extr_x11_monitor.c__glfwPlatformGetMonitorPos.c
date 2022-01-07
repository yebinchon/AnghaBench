
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int crtc; } ;
struct TYPE_13__ {TYPE_1__ x11; } ;
typedef TYPE_4__ _GLFWmonitor ;
typedef int XRRScreenResources ;
struct TYPE_14__ {int x; int y; } ;
typedef TYPE_5__ XRRCrtcInfo ;
struct TYPE_11__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_12__ {int display; int root; TYPE_2__ randr; } ;
struct TYPE_15__ {TYPE_3__ x11; } ;


 int XRRFreeCrtcInfo (TYPE_5__*) ;
 int XRRFreeScreenResources (int *) ;
 TYPE_5__* XRRGetCrtcInfo (int ,int *,int ) ;
 int * XRRGetScreenResourcesCurrent (int ,int ) ;
 TYPE_7__ _glfw ;

void _glfwPlatformGetMonitorPos(_GLFWmonitor* monitor, int* xpos, int* ypos)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        XRRScreenResources* sr;
        XRRCrtcInfo* ci;

        sr = XRRGetScreenResourcesCurrent(_glfw.x11.display, _glfw.x11.root);
        ci = XRRGetCrtcInfo(_glfw.x11.display, sr, monitor->x11.crtc);

        if (xpos)
            *xpos = ci->x;
        if (ypos)
            *ypos = ci->y;

        XRRFreeCrtcInfo(ci);
        XRRFreeScreenResources(sr);
    }
}
