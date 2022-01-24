#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * crtcs; int /*<<< orphan*/  ncrtc; } ;
typedef  TYPE_7__ XRRScreenResources ;
typedef  scalar_t__ XGETXCBCONNECTION_T ;
struct TYPE_11__ {scalar_t__ handle; scalar_t__ XGetXCBConnection; } ;
struct TYPE_16__ {int major; void* detectable; scalar_t__ available; scalar_t__ minor; int /*<<< orphan*/  errorBase; int /*<<< orphan*/  eventBase; int /*<<< orphan*/  majorOpcode; } ;
struct TYPE_14__ {void* available; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_13__ {int major; int minor; void* gammaBroken; void* available; int /*<<< orphan*/  errorBase; int /*<<< orphan*/  eventBase; } ;
struct TYPE_12__ {int /*<<< orphan*/  errorBase; int /*<<< orphan*/  eventBase; int /*<<< orphan*/  available; } ;
struct TYPE_15__ {int /*<<< orphan*/  display; void* MOTIF_WM_HINTS; void* NET_WM_BYPASS_COMPOSITOR; void* NET_WM_ICON_NAME; void* NET_WM_NAME; void* NET_WM_PID; void* NET_WM_PING; void* NET_WM_ICON; void* WM_DELETE_WINDOW; void* WM_STATE; void* WM_PROTOCOLS; void* XdndSelection; void* XdndFinished; void* XdndLeave; void* XdndDrop; void* XdndActionCopy; void* XdndStatus; void* XdndPosition; void* XdndEnter; void* XdndAware; void* SAVE_TARGETS; void* CLIPBOARD_MANAGER; void* CLIPBOARD; void* MULTIPLE; void* TARGETS; void* GLFW_SELECTION; void* ATOM_PAIR; void* COMPOUND_STRING; void* UTF8_STRING; void* NULL_; TYPE_1__ x11xcb; TYPE_6__ xkb; TYPE_4__ xinerama; int /*<<< orphan*/  root; TYPE_3__ randr; TYPE_2__ vidmode; } ;
struct TYPE_18__ {TYPE_5__ x11; } ;
typedef  void* GLFWbool ;
typedef  scalar_t__ Bool ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 void* GLFW_TRUE ; 
 int /*<<< orphan*/  RROutputChangeNotifyMask ; 
 int RTLD_GLOBAL ; 
 int RTLD_LAZY ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (char*,int) ; 
 scalar_t__ FUNC16 (scalar_t__,char*) ; 

__attribute__((used)) static GLFWbool FUNC17(void)
{
#if defined(_GLFW_HAS_XF86VM)
    // Check for XF86VidMode extension
    _glfw.x11.vidmode.available =
        XF86VidModeQueryExtension(_glfw.x11.display,
                                  &_glfw.x11.vidmode.eventBase,
                                  &_glfw.x11.vidmode.errorBase);
#endif /*_GLFW_HAS_XF86VM*/

    // Check for RandR extension
    if (FUNC5(_glfw.x11.display,
                          &_glfw.x11.randr.eventBase,
                          &_glfw.x11.randr.errorBase))
    {
        if (FUNC6(_glfw.x11.display,
                            &_glfw.x11.randr.major,
                            &_glfw.x11.randr.minor))
        {
            // The GLFW RandR path requires at least version 1.3
            if (_glfw.x11.randr.major > 1 || _glfw.x11.randr.minor >= 3)
                _glfw.x11.randr.available = GLFW_TRUE;
        }
        else
        {
            FUNC12(GLFW_PLATFORM_ERROR,
                            "X11: Failed to query RandR version");
        }
    }

    if (_glfw.x11.randr.available)
    {
        XRRScreenResources* sr = FUNC4(_glfw.x11.display,
                                                       _glfw.x11.root);

        if (!sr->ncrtc || !FUNC3(_glfw.x11.display, sr->crtcs[0]))
        {
            // This is either a headless system or an older Nvidia binary driver
            // with broken gamma support
            // Flag it as useless and fall back to Xf86VidMode gamma, if
            // available
            FUNC12(GLFW_PLATFORM_ERROR,
                            "X11: RandR gamma ramp support seems broken");
            _glfw.x11.randr.gammaBroken = GLFW_TRUE;
        }

        FUNC2(sr);

        FUNC7(_glfw.x11.display, _glfw.x11.root,
                       RROutputChangeNotifyMask);
    }

    if (FUNC9(_glfw.x11.display,
                               &_glfw.x11.xinerama.major,
                               &_glfw.x11.xinerama.minor))
    {
        if (FUNC8(_glfw.x11.display))
            _glfw.x11.xinerama.available = GLFW_TRUE;
    }

    // Check if Xkb is supported on this display
    _glfw.x11.xkb.major = 1;
    _glfw.x11.xkb.minor = 0;
    _glfw.x11.xkb.available =
        FUNC10(_glfw.x11.display,
                          &_glfw.x11.xkb.majorOpcode,
                          &_glfw.x11.xkb.eventBase,
                          &_glfw.x11.xkb.errorBase,
                          &_glfw.x11.xkb.major,
                          &_glfw.x11.xkb.minor);

    if (_glfw.x11.xkb.available)
    {
        Bool supported;

        if (FUNC11(_glfw.x11.display, True, &supported))
        {
            if (supported)
                _glfw.x11.xkb.detectable = GLFW_TRUE;
        }
    }

    _glfw.x11.x11xcb.handle = FUNC15("libX11-xcb.so", RTLD_LAZY | RTLD_GLOBAL);
    if (_glfw.x11.x11xcb.handle)
    {
        _glfw.x11.x11xcb.XGetXCBConnection = (XGETXCBCONNECTION_T)
            FUNC16(_glfw.x11.x11xcb.handle, "XGetXCBConnection");
    }

    // Update the key code LUT
    // FIXME: We should listen to XkbMapNotify events to track changes to
    // the keyboard mapping.
    FUNC13();

    // Detect whether an EWMH-conformant window manager is running
    FUNC14();

    // String format atoms
    _glfw.x11.NULL_ = FUNC1(_glfw.x11.display, "NULL", False);
    _glfw.x11.UTF8_STRING =
        FUNC1(_glfw.x11.display, "UTF8_STRING", False);
    _glfw.x11.COMPOUND_STRING =
        FUNC1(_glfw.x11.display, "COMPOUND_STRING", False);
    _glfw.x11.ATOM_PAIR = FUNC1(_glfw.x11.display, "ATOM_PAIR", False);

    // Custom selection property atom
    _glfw.x11.GLFW_SELECTION =
        FUNC1(_glfw.x11.display, "GLFW_SELECTION", False);

    // ICCCM standard clipboard atoms
    _glfw.x11.TARGETS = FUNC1(_glfw.x11.display, "TARGETS", False);
    _glfw.x11.MULTIPLE = FUNC1(_glfw.x11.display, "MULTIPLE", False);
    _glfw.x11.CLIPBOARD = FUNC1(_glfw.x11.display, "CLIPBOARD", False);

    // Clipboard manager atoms
    _glfw.x11.CLIPBOARD_MANAGER =
        FUNC1(_glfw.x11.display, "CLIPBOARD_MANAGER", False);
    _glfw.x11.SAVE_TARGETS =
        FUNC1(_glfw.x11.display, "SAVE_TARGETS", False);

    // Xdnd (drag and drop) atoms
    _glfw.x11.XdndAware = FUNC1(_glfw.x11.display, "XdndAware", False);
    _glfw.x11.XdndEnter = FUNC1(_glfw.x11.display, "XdndEnter", False);
    _glfw.x11.XdndPosition = FUNC1(_glfw.x11.display, "XdndPosition", False);
    _glfw.x11.XdndStatus = FUNC1(_glfw.x11.display, "XdndStatus", False);
    _glfw.x11.XdndActionCopy = FUNC1(_glfw.x11.display, "XdndActionCopy", False);
    _glfw.x11.XdndDrop = FUNC1(_glfw.x11.display, "XdndDrop", False);
    _glfw.x11.XdndLeave = FUNC1(_glfw.x11.display, "XdndLeave", False);
    _glfw.x11.XdndFinished = FUNC1(_glfw.x11.display, "XdndFinished", False);
    _glfw.x11.XdndSelection = FUNC1(_glfw.x11.display, "XdndSelection", False);

    // ICCCM, EWMH and Motif window property atoms
    // These can be set safely even without WM support
    // The EWMH atoms that require WM support are handled in detectEWMH
    _glfw.x11.WM_PROTOCOLS =
        FUNC1(_glfw.x11.display, "WM_PROTOCOLS", False);
    _glfw.x11.WM_STATE =
        FUNC1(_glfw.x11.display, "WM_STATE", False);
    _glfw.x11.WM_DELETE_WINDOW =
        FUNC1(_glfw.x11.display, "WM_DELETE_WINDOW", False);
    _glfw.x11.NET_WM_ICON =
        FUNC1(_glfw.x11.display, "_NET_WM_ICON", False);
    _glfw.x11.NET_WM_PING =
        FUNC1(_glfw.x11.display, "_NET_WM_PING", False);
    _glfw.x11.NET_WM_PID =
        FUNC1(_glfw.x11.display, "_NET_WM_PID", False);
    _glfw.x11.NET_WM_NAME =
        FUNC1(_glfw.x11.display, "_NET_WM_NAME", False);
    _glfw.x11.NET_WM_ICON_NAME =
        FUNC1(_glfw.x11.display, "_NET_WM_ICON_NAME", False);
    _glfw.x11.NET_WM_BYPASS_COMPOSITOR =
        FUNC1(_glfw.x11.display, "_NET_WM_BYPASS_COMPOSITOR", False);
    _glfw.x11.MOTIF_WM_HINTS =
        FUNC1(_glfw.x11.display, "_MOTIF_WM_HINTS", False);

    return GLFW_TRUE;
}