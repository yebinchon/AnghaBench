
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int output; int crtc; } ;
struct TYPE_14__ {TYPE_3__ x11; } ;
typedef TYPE_4__ _GLFWmonitor ;
typedef int XRRScreenResources ;
struct TYPE_15__ {int nmode; int * modes; } ;
typedef TYPE_5__ XRROutputInfo ;
typedef int XRRModeInfo ;
typedef int XRRCrtcInfo ;
struct TYPE_11__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_12__ {int display; int root; TYPE_1__ randr; } ;
struct TYPE_16__ {TYPE_2__ x11; } ;
typedef int GLFWvidmode ;


 int XRRFreeCrtcInfo (int *) ;
 int XRRFreeOutputInfo (TYPE_5__*) ;
 int XRRFreeScreenResources (int *) ;
 int * XRRGetCrtcInfo (int ,int *,int ) ;
 TYPE_5__* XRRGetOutputInfo (int ,int *,int ) ;
 int * XRRGetScreenResourcesCurrent (int ,int ) ;
 TYPE_8__ _glfw ;
 scalar_t__ _glfwCompareVideoModes (int *,int const*) ;
 int _glfwPlatformGetVideoMode (TYPE_4__*,int *) ;
 int * calloc (int,int) ;
 int * getModeInfo (int *,int ) ;
 int modeIsGood (int const*) ;
 int vidmodeFromModeInfo (int const*,int *) ;

GLFWvidmode* _glfwPlatformGetVideoModes(_GLFWmonitor* monitor, int* count)
{
    GLFWvidmode* result;

    *count = 0;

    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        int i, j;
        XRRScreenResources* sr;
        XRRCrtcInfo* ci;
        XRROutputInfo* oi;

        sr = XRRGetScreenResourcesCurrent(_glfw.x11.display, _glfw.x11.root);
        ci = XRRGetCrtcInfo(_glfw.x11.display, sr, monitor->x11.crtc);
        oi = XRRGetOutputInfo(_glfw.x11.display, sr, monitor->x11.output);

        result = calloc(oi->nmode, sizeof(GLFWvidmode));

        for (i = 0; i < oi->nmode; i++)
        {
            const XRRModeInfo* mi = getModeInfo(sr, oi->modes[i]);
            if (!modeIsGood(mi))
                continue;

            const GLFWvidmode mode = vidmodeFromModeInfo(mi, ci);

            for (j = 0; j < *count; j++)
            {
                if (_glfwCompareVideoModes(result + j, &mode) == 0)
                    break;
            }


            if (j < *count)
                continue;

            (*count)++;
            result[*count - 1] = mode;
        }

        XRRFreeOutputInfo(oi);
        XRRFreeCrtcInfo(ci);
        XRRFreeScreenResources(sr);
    }
    else
    {
        *count = 1;
        result = calloc(1, sizeof(GLFWvidmode));
        _glfwPlatformGetVideoMode(monitor, result);
    }

    return result;
}
