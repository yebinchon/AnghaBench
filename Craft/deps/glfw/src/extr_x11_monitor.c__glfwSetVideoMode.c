
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;


struct TYPE_23__ {int crtc; scalar_t__ oldMode; int output; } ;
struct TYPE_24__ {TYPE_3__ x11; } ;
typedef TYPE_4__ _GLFWmonitor ;
typedef int XRRScreenResources ;
struct TYPE_25__ {int nmode; int * modes; } ;
typedef TYPE_5__ XRROutputInfo ;
struct TYPE_26__ {scalar_t__ id; } ;
typedef TYPE_6__ XRRModeInfo ;
struct TYPE_27__ {int noutput; int outputs; int rotation; int y; int x; scalar_t__ mode; } ;
typedef TYPE_7__ XRRCrtcInfo ;
struct TYPE_21__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_22__ {int display; int root; TYPE_1__ randr; } ;
struct TYPE_20__ {TYPE_2__ x11; } ;
typedef scalar_t__ RRMode ;
typedef int GLboolean ;
typedef int const GLFWvidmode ;


 int CurrentTime ;
 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ None ;
 int XRRFreeCrtcInfo (TYPE_7__*) ;
 int XRRFreeOutputInfo (TYPE_5__*) ;
 int XRRFreeScreenResources (int *) ;
 TYPE_7__* XRRGetCrtcInfo (int ,int *,int ) ;
 TYPE_5__* XRRGetOutputInfo (int ,int *,int ) ;
 int * XRRGetScreenResources (int ,int ) ;
 int XRRSetCrtcConfig (int ,int *,int ,int ,int ,int ,scalar_t__,int ,int ,int ) ;
 TYPE_15__ _glfw ;
 int const* _glfwChooseVideoMode (TYPE_4__*,int const*) ;
 scalar_t__ _glfwCompareVideoModes (int const*,int const*) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformGetVideoMode (TYPE_4__*,int const*) ;
 TYPE_6__* getModeInfo (int *,int ) ;
 int modeIsGood (TYPE_6__ const*) ;
 int const vidmodeFromModeInfo (TYPE_6__ const*,TYPE_7__*) ;

GLboolean _glfwSetVideoMode(_GLFWmonitor* monitor, const GLFWvidmode* desired)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        XRRScreenResources* sr;
        XRRCrtcInfo* ci;
        XRROutputInfo* oi;
        GLFWvidmode current;
        const GLFWvidmode* best;
        RRMode native = None;
        int i;

        best = _glfwChooseVideoMode(monitor, desired);
        _glfwPlatformGetVideoMode(monitor, &current);
        if (_glfwCompareVideoModes(&current, best) == 0)
            return GL_TRUE;

        sr = XRRGetScreenResources(_glfw.x11.display, _glfw.x11.root);
        ci = XRRGetCrtcInfo(_glfw.x11.display, sr, monitor->x11.crtc);
        oi = XRRGetOutputInfo(_glfw.x11.display, sr, monitor->x11.output);

        for (i = 0; i < oi->nmode; i++)
        {
            const XRRModeInfo* mi = getModeInfo(sr, oi->modes[i]);
            if (!modeIsGood(mi))
                continue;

            const GLFWvidmode mode = vidmodeFromModeInfo(mi, ci);
            if (_glfwCompareVideoModes(best, &mode) == 0)
            {
                native = mi->id;
                break;
            }
        }

        if (native)
        {
            if (monitor->x11.oldMode == None)
                monitor->x11.oldMode = ci->mode;

            XRRSetCrtcConfig(_glfw.x11.display,
                             sr, monitor->x11.crtc,
                             CurrentTime,
                             ci->x, ci->y,
                             native,
                             ci->rotation,
                             ci->outputs,
                             ci->noutput);
        }

        XRRFreeOutputInfo(oi);
        XRRFreeCrtcInfo(ci);
        XRRFreeScreenResources(sr);

        if (!native)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Monitor mode list changed");
            return GL_FALSE;
        }
    }

    return GL_TRUE;
}
