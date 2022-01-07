
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {int * crtcs; int ncrtc; } ;
typedef TYPE_7__ XRRScreenResources ;
struct TYPE_12__ {int major; void* detectable; scalar_t__ available; scalar_t__ minor; int errorBase; int eventBase; int majorOpcode; } ;
struct TYPE_11__ {int major; void* available; scalar_t__ minor; int errorBase; int eventBase; int majorOpcode; } ;
struct TYPE_16__ {void* available; int minor; int major; } ;
struct TYPE_14__ {int major; int minor; void* gammaBroken; void* available; int errorBase; int eventBase; } ;
struct TYPE_13__ {int errorBase; int eventBase; int available; } ;
struct TYPE_15__ {int display; void* XdndSelection; void* XdndFinished; void* XdndLeave; void* XdndDrop; void* XdndActionCopy; void* XdndStatus; void* XdndPosition; void* XdndEnter; void* XdndAware; void* SAVE_TARGETS; void* CLIPBOARD_MANAGER; void* CLIPBOARD; void* MULTIPLE; void* TARGETS; void* GLFW_SELECTION; void* ATOM_PAIR; void* COMPOUND_STRING; void* UTF8_STRING; void* NULL_; TYPE_2__ xkb; TYPE_1__ xi; TYPE_6__ xinerama; TYPE_4__ randr; int root; TYPE_3__ vidmode; void* MOTIF_WM_HINTS; void* WM_DELETE_WINDOW; void* WM_STATE; void* WM_PROTOCOLS; } ;
struct TYPE_18__ {TYPE_5__ x11; } ;
typedef void* GLboolean ;
typedef scalar_t__ Bool ;


 scalar_t__ BadRequest ;
 int False ;
 int GLFW_PLATFORM_ERROR ;
 void* GL_FALSE ;
 void* GL_TRUE ;
 int True ;
 int XF86VidModeQueryExtension (int ,int *,int *) ;
 scalar_t__ XIQueryVersion (int ,int*,scalar_t__*) ;
 void* XInternAtom (int ,char*,int ) ;
 scalar_t__ XQueryExtension (int ,char*,int *,int *,int *) ;
 int XRRFreeScreenResources (TYPE_7__*) ;
 int XRRGetCrtcGammaSize (int ,int ) ;
 TYPE_7__* XRRGetScreenResources (int ,int ) ;
 void* XRRQueryExtension (int ,int *,int *) ;
 int XRRQueryVersion (int ,int*,int*) ;
 scalar_t__ XineramaIsActive (int ) ;
 scalar_t__ XineramaQueryExtension (int ,int *,int *) ;
 scalar_t__ XkbQueryExtension (int ,int *,int *,int *,int*,scalar_t__*) ;
 scalar_t__ XkbSetDetectableAutoRepeat (int ,int ,scalar_t__*) ;
 TYPE_8__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int createKeyTables () ;
 int detectEWMH () ;

__attribute__((used)) static GLboolean initExtensions(void)
{

    _glfw.x11.WM_PROTOCOLS = XInternAtom(_glfw.x11.display,
                                         "WM_PROTOCOLS",
                                         False);
    _glfw.x11.WM_STATE = XInternAtom(_glfw.x11.display, "WM_STATE", False);
    _glfw.x11.WM_DELETE_WINDOW = XInternAtom(_glfw.x11.display,
                                             "WM_DELETE_WINDOW",
                                             False);
    _glfw.x11.MOTIF_WM_HINTS = XInternAtom(_glfw.x11.display,
                                           "_MOTIF_WM_HINTS",
                                           False);
    _glfw.x11.randr.available =
        XRRQueryExtension(_glfw.x11.display,
                          &_glfw.x11.randr.eventBase,
                          &_glfw.x11.randr.errorBase);

    if (_glfw.x11.randr.available)
    {
        XRRScreenResources* sr;

        if (!XRRQueryVersion(_glfw.x11.display,
                             &_glfw.x11.randr.major,
                             &_glfw.x11.randr.minor))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to query RandR version");
            return GL_FALSE;
        }


        if (_glfw.x11.randr.major == 1 && _glfw.x11.randr.minor < 3)
            _glfw.x11.randr.available = GL_FALSE;

        sr = XRRGetScreenResources(_glfw.x11.display, _glfw.x11.root);

        if (!sr->ncrtc || !XRRGetCrtcGammaSize(_glfw.x11.display, sr->crtcs[0]))
        {




            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: RandR gamma ramp support seems broken");
            _glfw.x11.randr.gammaBroken = GL_TRUE;
        }

        XRRFreeScreenResources(sr);
    }

    if (XineramaQueryExtension(_glfw.x11.display,
                               &_glfw.x11.xinerama.major,
                               &_glfw.x11.xinerama.minor))
    {
        if (XineramaIsActive(_glfw.x11.display))
            _glfw.x11.xinerama.available = GL_TRUE;
    }
    _glfw.x11.xkb.major = 1;
    _glfw.x11.xkb.minor = 0;
    _glfw.x11.xkb.available =
        XkbQueryExtension(_glfw.x11.display,
                          &_glfw.x11.xkb.majorOpcode,
                          &_glfw.x11.xkb.eventBase,
                          &_glfw.x11.xkb.errorBase,
                          &_glfw.x11.xkb.major,
                          &_glfw.x11.xkb.minor);

    if (_glfw.x11.xkb.available)
    {
        Bool supported;

        if (XkbSetDetectableAutoRepeat(_glfw.x11.display, True, &supported))
        {
            if (supported)
                _glfw.x11.xkb.detectable = GL_TRUE;
        }
    }




    createKeyTables();


    detectEWMH();


    _glfw.x11.NULL_ = XInternAtom(_glfw.x11.display, "NULL", False);
    _glfw.x11.UTF8_STRING =
        XInternAtom(_glfw.x11.display, "UTF8_STRING", False);
    _glfw.x11.COMPOUND_STRING =
        XInternAtom(_glfw.x11.display, "COMPOUND_STRING", False);
    _glfw.x11.ATOM_PAIR = XInternAtom(_glfw.x11.display, "ATOM_PAIR", False);


    _glfw.x11.GLFW_SELECTION =
        XInternAtom(_glfw.x11.display, "GLFW_SELECTION", False);


    _glfw.x11.TARGETS = XInternAtom(_glfw.x11.display, "TARGETS", False);
    _glfw.x11.MULTIPLE = XInternAtom(_glfw.x11.display, "MULTIPLE", False);
    _glfw.x11.CLIPBOARD = XInternAtom(_glfw.x11.display, "CLIPBOARD", False);


    _glfw.x11.CLIPBOARD_MANAGER =
        XInternAtom(_glfw.x11.display, "CLIPBOARD_MANAGER", False);
    _glfw.x11.SAVE_TARGETS =
        XInternAtom(_glfw.x11.display, "SAVE_TARGETS", False);


    _glfw.x11.XdndAware = XInternAtom(_glfw.x11.display, "XdndAware", True);
    _glfw.x11.XdndEnter = XInternAtom(_glfw.x11.display, "XdndEnter", True);
    _glfw.x11.XdndPosition = XInternAtom(_glfw.x11.display, "XdndPosition", True);
    _glfw.x11.XdndStatus = XInternAtom(_glfw.x11.display, "XdndStatus", True);
    _glfw.x11.XdndActionCopy = XInternAtom(_glfw.x11.display, "XdndActionCopy", True);
    _glfw.x11.XdndDrop = XInternAtom(_glfw.x11.display, "XdndDrop", True);
    _glfw.x11.XdndLeave = XInternAtom(_glfw.x11.display, "XdndLeave", True);
    _glfw.x11.XdndFinished = XInternAtom(_glfw.x11.display, "XdndFinished", True);
    _glfw.x11.XdndSelection = XInternAtom(_glfw.x11.display, "XdndSelection", True);

    return GL_TRUE;
}
