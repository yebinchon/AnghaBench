
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_18__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef int pid_t ;
typedef int mask ;
typedef int hints ;
struct TYPE_35__ {scalar_t__ title; int height; int width; int resizable; scalar_t__ monitor; scalar_t__ floating; int decorated; } ;
typedef TYPE_4__ _GLFWwndconfig ;
struct TYPE_33__ {int height; int width; int ypos; int xpos; int handle; int ic; int colormap; } ;
struct TYPE_36__ {TYPE_2__ x11; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_37__ {int flags; char* res_name; char* res_class; int max_height; int min_height; int max_width; int min_width; scalar_t__ y; scalar_t__ x; int initial_state; } ;
typedef TYPE_6__ XWMHints ;
struct TYPE_38__ {int visual; int depth; } ;
typedef TYPE_7__ XVisualInfo ;
typedef TYPE_6__ XSizeHints ;
struct TYPE_39__ {int event_mask; int override_redirect; scalar_t__ border_pixel; int colormap; } ;
typedef TYPE_9__ XSetWindowAttributes ;
typedef int XPointer ;
struct TYPE_30__ {int deviceid; int mask_len; unsigned char* mask; } ;
typedef TYPE_10__ XIEventMask ;
typedef TYPE_6__ XClassHint ;
struct TYPE_32__ {scalar_t__ available; } ;
struct TYPE_34__ {int WM_DELETE_WINDOW; int NET_WM_PING; scalar_t__ im; int display; scalar_t__ XdndAware; TYPE_1__ xi; scalar_t__ NET_WM_PID; scalar_t__ NET_WM_STATE_ABOVE; scalar_t__ NET_WM_STATE; scalar_t__ MOTIF_WM_HINTS; int NET_WM_STATE_FULLSCREEN; int context; int root; } ;
struct TYPE_31__ {TYPE_3__ x11; } ;
typedef int GLboolean ;
typedef int Atom ;


 int AllocNone ;
 int ButtonPressMask ;
 int ButtonReleaseMask ;
 unsigned long CWBorderPixel ;
 unsigned long CWColormap ;
 unsigned long CWEventMask ;
 int CWOverrideRedirect ;
 int EnterWindowMask ;
 int ExposureMask ;
 int FocusChangeMask ;
 int GLFW_OUT_OF_MEMORY ;
 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 int InputOutput ;
 int KeyPressMask ;
 int KeyReleaseMask ;
 int LeaveWindowMask ;
 int NormalState ;
 int PMaxSize ;
 int PMinSize ;
 int PPosition ;
 int PointerMotionMask ;
 int PropModeReplace ;
 int PropertyChangeMask ;
 int RRScreenChangeNotifyMask ;
 int StateHint ;
 int StructureNotifyMask ;
 int True ;
 int VisibilityChangeMask ;
 scalar_t__ XA_ATOM ;
 scalar_t__ XA_CARDINAL ;
 TYPE_6__* XAllocClassHint () ;
 TYPE_6__* XAllocSizeHints () ;
 TYPE_6__* XAllocWMHints () ;
 int XChangeProperty (int ,int ,scalar_t__,scalar_t__,int,int ,unsigned char*,int) ;
 int XChangeWindowAttributes (int ,int ,int ,TYPE_9__*) ;
 int XCreateColormap (int ,int ,int ,int ) ;
 int XCreateIC (scalar_t__,int ,int,int ,int ,int ,int ,int *) ;
 int XCreateWindow (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,unsigned long,TYPE_9__*) ;
 int XFree (TYPE_6__*) ;
 int XIMPreeditNothing ;
 int XIMStatusNothing ;
 int XISelectEvents (int ,int ,TYPE_10__*,int) ;
 int XISetMask (unsigned char*,int ) ;
 int XI_Motion ;
 int XNClientWindow ;
 int XNFocusWindow ;
 int XNInputStyle ;
 int XRRSelectInput (int ,int ,int ) ;
 int XSaveContext (int ,int ,int ,int ) ;
 int XSetClassHint (int ,int ,TYPE_6__*) ;
 int XSetWMHints (int ,int ,TYPE_6__*) ;
 int XSetWMNormalHints (int ,int ,TYPE_6__*) ;
 int XSetWMProtocols (int ,int ,int*,int) ;
 TYPE_7__* _GLFW_X11_CONTEXT_VISUAL ;
 int _NET_WM_STATE_ADD ;
 TYPE_18__ _glfw ;
 int _glfwGrabXErrorHandler () ;
 int _glfwInputError (int ,char*) ;
 int _glfwInputXError (int ,char*) ;
 int _glfwPlatformGetMonitorPos (scalar_t__,scalar_t__*,scalar_t__*) ;
 int _glfwPlatformGetWindowPos (TYPE_5__*,int *,int *) ;
 int _glfwPlatformGetWindowSize (TYPE_5__*,int *,int *) ;
 int _glfwPlatformSetWindowTitle (TYPE_5__*,scalar_t__) ;
 int _glfwReleaseXErrorHandler () ;
 int getpid () ;
 int sendEventToWM (TYPE_5__*,scalar_t__,int ,scalar_t__,int ,int,int ) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static GLboolean createWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig)
{
    unsigned long wamask;
    XSetWindowAttributes wa;
    XVisualInfo* vi = _GLFW_X11_CONTEXT_VISUAL;





    window->x11.colormap = XCreateColormap(_glfw.x11.display,
                                           _glfw.x11.root,
                                           vi->visual,
                                           AllocNone);


    {
        wamask = CWBorderPixel | CWColormap | CWEventMask;

        wa.colormap = window->x11.colormap;
        wa.border_pixel = 0;
        wa.event_mask = StructureNotifyMask | KeyPressMask | KeyReleaseMask |
                        PointerMotionMask | ButtonPressMask | ButtonReleaseMask |
                        ExposureMask | FocusChangeMask | VisibilityChangeMask |
                        EnterWindowMask | LeaveWindowMask | PropertyChangeMask;

        _glfwGrabXErrorHandler();

        window->x11.handle = XCreateWindow(_glfw.x11.display,
                                           _glfw.x11.root,
                                           0, 0,
                                           wndconfig->width, wndconfig->height,
                                           0,
                                           vi->depth,
                                           InputOutput,
                                           vi->visual,
                                           wamask,
                                           &wa);

        _glfwReleaseXErrorHandler();

        if (!window->x11.handle)
        {
            _glfwInputXError(GLFW_PLATFORM_ERROR,
                             "X11: Failed to create window");
            return GL_FALSE;
        }

        XSaveContext(_glfw.x11.display,
                     window->x11.handle,
                     _glfw.x11.context,
                     (XPointer) window);
    }

    if (wndconfig->monitor)
    {
        if (!_glfw.x11.NET_WM_STATE || !_glfw.x11.NET_WM_STATE_FULLSCREEN)
        {
            XSetWindowAttributes attributes;
            attributes.override_redirect = True;
            XChangeWindowAttributes(_glfw.x11.display,
                                    window->x11.handle,
                                    CWOverrideRedirect,
                                    &attributes);
        }
    }
    else
    {
        if (!wndconfig->decorated)
        {
            struct
            {
                unsigned long flags;
                unsigned long functions;
                unsigned long decorations;
                long input_mode;
                unsigned long status;
            } hints;

            hints.flags = 2;
            hints.decorations = 0;

            XChangeProperty(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.MOTIF_WM_HINTS,
                            _glfw.x11.MOTIF_WM_HINTS, 32,
                            PropModeReplace,
                            (unsigned char*) &hints,
                            sizeof(hints) / sizeof(long));
        }

        if (wndconfig->floating)
        {
            if (_glfw.x11.NET_WM_STATE && _glfw.x11.NET_WM_STATE_ABOVE)
            {
                sendEventToWM(window,
                              _glfw.x11.NET_WM_STATE,
                              _NET_WM_STATE_ADD,
                              _glfw.x11.NET_WM_STATE_ABOVE,
                              0, 1, 0);
            }
        }
    }



    {
        int count = 0;
        Atom protocols[2];



        if (_glfw.x11.WM_DELETE_WINDOW)
            protocols[count++] = _glfw.x11.WM_DELETE_WINDOW;




        if (_glfw.x11.NET_WM_PING)
            protocols[count++] = _glfw.x11.NET_WM_PING;

        if (count > 0)
        {
            XSetWMProtocols(_glfw.x11.display, window->x11.handle,
                            protocols, count);
        }
    }

    if (_glfw.x11.NET_WM_PID)
    {
        const pid_t pid = getpid();

        XChangeProperty(_glfw.x11.display, window->x11.handle,
                        _glfw.x11.NET_WM_PID, XA_CARDINAL, 32,
                        PropModeReplace,
                        (unsigned char*) &pid, 1);
    }


    {
        XWMHints* hints = XAllocWMHints();
        if (!hints)
        {
            _glfwInputError(GLFW_OUT_OF_MEMORY,
                            "X11: Failed to allocate WM hints");
            return GL_FALSE;
        }

        hints->flags = StateHint;
        hints->initial_state = NormalState;

        XSetWMHints(_glfw.x11.display, window->x11.handle, hints);
        XFree(hints);
    }


    {
        XSizeHints* hints = XAllocSizeHints();
        hints->flags = 0;

        if (wndconfig->monitor)
        {
            hints->flags |= PPosition;
            _glfwPlatformGetMonitorPos(wndconfig->monitor, &hints->x, &hints->y);
        }
        else
        {



            hints->flags |= PPosition;
            hints->x = hints->y = 0;
        }

        if (!wndconfig->resizable)
        {
            hints->flags |= (PMinSize | PMaxSize);
            hints->min_width = hints->max_width = wndconfig->width;
            hints->min_height = hints->max_height = wndconfig->height;
        }

        XSetWMNormalHints(_glfw.x11.display, window->x11.handle, hints);
        XFree(hints);
    }




    if (strlen(wndconfig->title))
    {
        XClassHint* hint = XAllocClassHint();
        hint->res_name = (char*) wndconfig->title;
        hint->res_class = (char*) wndconfig->title;

        XSetClassHint(_glfw.x11.display, window->x11.handle, hint);
        XFree(hint);
    }
    if (_glfw.x11.XdndAware)
    {

        const Atom version = 5;
        XChangeProperty(_glfw.x11.display, window->x11.handle,
                        _glfw.x11.XdndAware, XA_ATOM, 32,
                        PropModeReplace, (unsigned char*) &version, 1);
    }

    _glfwPlatformSetWindowTitle(window, wndconfig->title);

    XRRSelectInput(_glfw.x11.display, window->x11.handle,
                   RRScreenChangeNotifyMask);

    if (_glfw.x11.im)
    {
        window->x11.ic = XCreateIC(_glfw.x11.im,
                                   XNInputStyle,
                                   XIMPreeditNothing | XIMStatusNothing,
                                   XNClientWindow,
                                   window->x11.handle,
                                   XNFocusWindow,
                                   window->x11.handle,
                                   ((void*)0));
    }

    _glfwPlatformGetWindowPos(window, &window->x11.xpos, &window->x11.ypos);
    _glfwPlatformGetWindowSize(window, &window->x11.width, &window->x11.height);

    return GL_TRUE;
}
