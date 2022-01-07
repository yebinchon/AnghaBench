
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
typedef scalar_t__ XGETXCBCONNECTION_T ;
struct TYPE_11__ {scalar_t__ handle; scalar_t__ XGetXCBConnection; } ;
struct TYPE_16__ {int major; void* detectable; scalar_t__ available; scalar_t__ minor; int errorBase; int eventBase; int majorOpcode; } ;
struct TYPE_14__ {void* available; int minor; int major; } ;
struct TYPE_13__ {int major; int minor; void* gammaBroken; void* available; int errorBase; int eventBase; } ;
struct TYPE_12__ {int errorBase; int eventBase; int available; } ;
struct TYPE_15__ {int display; void* MOTIF_WM_HINTS; void* NET_WM_BYPASS_COMPOSITOR; void* NET_WM_ICON_NAME; void* NET_WM_NAME; void* NET_WM_PID; void* NET_WM_PING; void* NET_WM_ICON; void* WM_DELETE_WINDOW; void* WM_STATE; void* WM_PROTOCOLS; void* XdndSelection; void* XdndFinished; void* XdndLeave; void* XdndDrop; void* XdndActionCopy; void* XdndStatus; void* XdndPosition; void* XdndEnter; void* XdndAware; void* SAVE_TARGETS; void* CLIPBOARD_MANAGER; void* CLIPBOARD; void* MULTIPLE; void* TARGETS; void* GLFW_SELECTION; void* ATOM_PAIR; void* COMPOUND_STRING; void* UTF8_STRING; void* NULL_; TYPE_1__ x11xcb; TYPE_6__ xkb; TYPE_4__ xinerama; int root; TYPE_3__ randr; TYPE_2__ vidmode; } ;
struct TYPE_18__ {TYPE_5__ x11; } ;
typedef void* GLFWbool ;
typedef scalar_t__ Bool ;


 int False ;
 int GLFW_PLATFORM_ERROR ;
 void* GLFW_TRUE ;
 int RROutputChangeNotifyMask ;
 int RTLD_GLOBAL ;
 int RTLD_LAZY ;
 int True ;
 int XF86VidModeQueryExtension (int ,int *,int *) ;
 void* XInternAtom (int ,char*,int ) ;
 int XRRFreeScreenResources (TYPE_7__*) ;
 int XRRGetCrtcGammaSize (int ,int ) ;
 TYPE_7__* XRRGetScreenResources (int ,int ) ;
 scalar_t__ XRRQueryExtension (int ,int *,int *) ;
 scalar_t__ XRRQueryVersion (int ,int*,int*) ;
 int XRRSelectInput (int ,int ,int ) ;
 scalar_t__ XineramaIsActive (int ) ;
 scalar_t__ XineramaQueryExtension (int ,int *,int *) ;
 scalar_t__ XkbQueryExtension (int ,int *,int *,int *,int*,scalar_t__*) ;
 scalar_t__ XkbSetDetectableAutoRepeat (int ,int ,scalar_t__*) ;
 TYPE_8__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int createKeyTables () ;
 int detectEWMH () ;
 scalar_t__ dlopen (char*,int) ;
 scalar_t__ dlsym (scalar_t__,char*) ;

__attribute__((used)) static GLFWbool initExtensions(void)
{
    if (XRRQueryExtension(_glfw.x11.display,
                          &_glfw.x11.randr.eventBase,
                          &_glfw.x11.randr.errorBase))
    {
        if (XRRQueryVersion(_glfw.x11.display,
                            &_glfw.x11.randr.major,
                            &_glfw.x11.randr.minor))
        {

            if (_glfw.x11.randr.major > 1 || _glfw.x11.randr.minor >= 3)
                _glfw.x11.randr.available = GLFW_TRUE;
        }
        else
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to query RandR version");
        }
    }

    if (_glfw.x11.randr.available)
    {
        XRRScreenResources* sr = XRRGetScreenResources(_glfw.x11.display,
                                                       _glfw.x11.root);

        if (!sr->ncrtc || !XRRGetCrtcGammaSize(_glfw.x11.display, sr->crtcs[0]))
        {




            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: RandR gamma ramp support seems broken");
            _glfw.x11.randr.gammaBroken = GLFW_TRUE;
        }

        XRRFreeScreenResources(sr);

        XRRSelectInput(_glfw.x11.display, _glfw.x11.root,
                       RROutputChangeNotifyMask);
    }

    if (XineramaQueryExtension(_glfw.x11.display,
                               &_glfw.x11.xinerama.major,
                               &_glfw.x11.xinerama.minor))
    {
        if (XineramaIsActive(_glfw.x11.display))
            _glfw.x11.xinerama.available = GLFW_TRUE;
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
                _glfw.x11.xkb.detectable = GLFW_TRUE;
        }
    }

    _glfw.x11.x11xcb.handle = dlopen("libX11-xcb.so", RTLD_LAZY | RTLD_GLOBAL);
    if (_glfw.x11.x11xcb.handle)
    {
        _glfw.x11.x11xcb.XGetXCBConnection = (XGETXCBCONNECTION_T)
            dlsym(_glfw.x11.x11xcb.handle, "XGetXCBConnection");
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


    _glfw.x11.XdndAware = XInternAtom(_glfw.x11.display, "XdndAware", False);
    _glfw.x11.XdndEnter = XInternAtom(_glfw.x11.display, "XdndEnter", False);
    _glfw.x11.XdndPosition = XInternAtom(_glfw.x11.display, "XdndPosition", False);
    _glfw.x11.XdndStatus = XInternAtom(_glfw.x11.display, "XdndStatus", False);
    _glfw.x11.XdndActionCopy = XInternAtom(_glfw.x11.display, "XdndActionCopy", False);
    _glfw.x11.XdndDrop = XInternAtom(_glfw.x11.display, "XdndDrop", False);
    _glfw.x11.XdndLeave = XInternAtom(_glfw.x11.display, "XdndLeave", False);
    _glfw.x11.XdndFinished = XInternAtom(_glfw.x11.display, "XdndFinished", False);
    _glfw.x11.XdndSelection = XInternAtom(_glfw.x11.display, "XdndSelection", False);




    _glfw.x11.WM_PROTOCOLS =
        XInternAtom(_glfw.x11.display, "WM_PROTOCOLS", False);
    _glfw.x11.WM_STATE =
        XInternAtom(_glfw.x11.display, "WM_STATE", False);
    _glfw.x11.WM_DELETE_WINDOW =
        XInternAtom(_glfw.x11.display, "WM_DELETE_WINDOW", False);
    _glfw.x11.NET_WM_ICON =
        XInternAtom(_glfw.x11.display, "_NET_WM_ICON", False);
    _glfw.x11.NET_WM_PING =
        XInternAtom(_glfw.x11.display, "_NET_WM_PING", False);
    _glfw.x11.NET_WM_PID =
        XInternAtom(_glfw.x11.display, "_NET_WM_PID", False);
    _glfw.x11.NET_WM_NAME =
        XInternAtom(_glfw.x11.display, "_NET_WM_NAME", False);
    _glfw.x11.NET_WM_ICON_NAME =
        XInternAtom(_glfw.x11.display, "_NET_WM_ICON_NAME", False);
    _glfw.x11.NET_WM_BYPASS_COMPOSITOR =
        XInternAtom(_glfw.x11.display, "_NET_WM_BYPASS_COMPOSITOR", False);
    _glfw.x11.MOTIF_WM_HINTS =
        XInternAtom(_glfw.x11.display, "_MOTIF_WM_HINTS", False);

    return GLFW_TRUE;
}
