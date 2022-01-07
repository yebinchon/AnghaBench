
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int crtc; } ;
struct TYPE_19__ {TYPE_2__ x11; } ;
typedef TYPE_5__ _GLFWmonitor ;
struct TYPE_20__ {int blue; int green; int red; } ;
typedef TYPE_6__ XRRCrtcGamma ;
struct TYPE_21__ {int size; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct TYPE_17__ {scalar_t__ available; } ;
struct TYPE_15__ {int gammaBroken; scalar_t__ available; } ;
struct TYPE_18__ {int screen; int display; TYPE_3__ vidmode; TYPE_1__ randr; } ;
struct TYPE_14__ {TYPE_4__ x11; } ;
typedef TYPE_7__ GLFWgammaramp ;


 int XF86VidModeSetGammaRamp (int ,int ,int,unsigned short*,unsigned short*,unsigned short*) ;
 TYPE_6__* XRRAllocGamma (int) ;
 int XRRFreeGamma (TYPE_6__*) ;
 int XRRSetCrtcGamma (int ,int ,TYPE_6__*) ;
 TYPE_10__ _glfw ;
 int memcpy (int ,scalar_t__,int) ;

void _glfwPlatformSetGammaRamp(_GLFWmonitor* monitor, const GLFWgammaramp* ramp)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.gammaBroken)
    {
        XRRCrtcGamma* gamma = XRRAllocGamma(ramp->size);

        memcpy(gamma->red, ramp->red, ramp->size * sizeof(unsigned short));
        memcpy(gamma->green, ramp->green, ramp->size * sizeof(unsigned short));
        memcpy(gamma->blue, ramp->blue, ramp->size * sizeof(unsigned short));

        XRRSetCrtcGamma(_glfw.x11.display, monitor->x11.crtc, gamma);
        XRRFreeGamma(gamma);
    }
}
