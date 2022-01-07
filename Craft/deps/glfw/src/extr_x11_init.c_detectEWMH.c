
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ Window ;
struct TYPE_3__ {scalar_t__ root; void* NET_WM_BYPASS_COMPOSITOR; void* NET_REQUEST_FRAME_EXTENTS; void* NET_FRAME_EXTENTS; void* NET_ACTIVE_WINDOW; void* NET_WM_PING; void* NET_WM_PID; void* NET_WM_ICON_NAME; void* NET_WM_NAME; void* NET_WM_FULLSCREEN_MONITORS; void* NET_WM_STATE_FULLSCREEN; void* NET_WM_STATE_ABOVE; void* NET_WM_STATE; int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef scalar_t__ Atom ;


 scalar_t__ None ;
 int True ;
 int XA_ATOM ;
 int XA_WINDOW ;
 int XFree (scalar_t__*) ;
 scalar_t__ XInternAtom (int ,char*,int ) ;
 TYPE_2__ _glfw ;
 int _glfwGetWindowProperty (scalar_t__,scalar_t__,int ,unsigned char**) ;
 int _glfwGrabXErrorHandler () ;
 int _glfwReleaseXErrorHandler () ;
 void* getSupportedAtom (scalar_t__*,unsigned long,char*) ;

__attribute__((used)) static void detectEWMH(void)
{
    Window* windowFromRoot = ((void*)0);
    Window* windowFromChild = ((void*)0);


    Atom supportingWmCheck =
        XInternAtom(_glfw.x11.display, "_NET_SUPPORTING_WM_CHECK", True);
    Atom wmSupported =
        XInternAtom(_glfw.x11.display, "_NET_SUPPORTED", True);
    if (supportingWmCheck == None || wmSupported == None)
        return;


    if (_glfwGetWindowProperty(_glfw.x11.root,
                               supportingWmCheck,
                               XA_WINDOW,
                               (unsigned char**) &windowFromRoot) != 1)
    {
        if (windowFromRoot)
            XFree(windowFromRoot);
        return;
    }

    _glfwGrabXErrorHandler();



    if (_glfwGetWindowProperty(*windowFromRoot,
                               supportingWmCheck,
                               XA_WINDOW,
                               (unsigned char**) &windowFromChild) != 1)
    {
        XFree(windowFromRoot);
        if (windowFromChild)
            XFree(windowFromChild);
        return;
    }

    _glfwReleaseXErrorHandler();


    if (*windowFromRoot != *windowFromChild)
    {
        XFree(windowFromRoot);
        XFree(windowFromChild);
        return;
    }

    XFree(windowFromRoot);
    XFree(windowFromChild);



    Atom* supportedAtoms;
    unsigned long atomCount;



    atomCount = _glfwGetWindowProperty(_glfw.x11.root,
                                       wmSupported,
                                       XA_ATOM,
                                       (unsigned char**) &supportedAtoms);


    _glfw.x11.NET_WM_STATE =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_STATE");
    _glfw.x11.NET_WM_STATE_ABOVE =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_STATE_ABOVE");
    _glfw.x11.NET_WM_STATE_FULLSCREEN =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_STATE_FULLSCREEN");
    _glfw.x11.NET_WM_FULLSCREEN_MONITORS =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_FULLSCREEN_MONITORS");
    _glfw.x11.NET_WM_NAME =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_NAME");
    _glfw.x11.NET_WM_ICON_NAME =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_ICON_NAME");
    _glfw.x11.NET_WM_PID =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_PID");
    _glfw.x11.NET_WM_PING =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_PING");
    _glfw.x11.NET_ACTIVE_WINDOW =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_ACTIVE_WINDOW");
    _glfw.x11.NET_FRAME_EXTENTS =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_FRAME_EXTENTS");
    _glfw.x11.NET_REQUEST_FRAME_EXTENTS =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_REQUEST_FRAME_EXTENTS");
    _glfw.x11.NET_WM_BYPASS_COMPOSITOR =
        getSupportedAtom(supportedAtoms, atomCount, "_NET_WM_BYPASS_COMPOSITOR");

    XFree(supportedAtoms);
}
