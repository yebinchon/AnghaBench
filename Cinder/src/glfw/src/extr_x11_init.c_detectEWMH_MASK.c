#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ Window ;
struct TYPE_3__ {scalar_t__ root; void* NET_REQUEST_FRAME_EXTENTS; void* NET_FRAME_EXTENTS; void* NET_ACTIVE_WINDOW; void* NET_WM_WINDOW_TYPE_NORMAL; void* NET_WM_WINDOW_TYPE; void* NET_WM_FULLSCREEN_MONITORS; void* NET_WM_STATE_MAXIMIZED_HORZ; void* NET_WM_STATE_MAXIMIZED_VERT; void* NET_WM_STATE_FULLSCREEN; void* NET_WM_STATE_ABOVE; void* NET_WM_STATE; int /*<<< orphan*/  display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  XA_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ _glfw ; 
 int FUNC2 (scalar_t__,scalar_t__ const,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (scalar_t__*,unsigned long,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    Window* windowFromRoot = NULL;
    Window* windowFromChild = NULL;

    // First we need a couple of atoms
    const Atom supportingWmCheck =
        FUNC1(_glfw.x11.display, "_NET_SUPPORTING_WM_CHECK", False);
    const Atom wmSupported =
        FUNC1(_glfw.x11.display, "_NET_SUPPORTED", False);

    // Then we look for the _NET_SUPPORTING_WM_CHECK property of the root window
    if (FUNC2(_glfw.x11.root,
                                  supportingWmCheck,
                                  XA_WINDOW,
                                  (unsigned char**) &windowFromRoot) != 1)
    {
        if (windowFromRoot)
            FUNC0(windowFromRoot);
        return;
    }

    FUNC3();

    // It should be the ID of a child window (of the root)
    // Then we look for the same property on the child window
    if (FUNC2(*windowFromRoot,
                                  supportingWmCheck,
                                  XA_WINDOW,
                                  (unsigned char**) &windowFromChild) != 1)
    {
        FUNC0(windowFromRoot);
        if (windowFromChild)
            FUNC0(windowFromChild);
        return;
    }

    FUNC4();

    // It should be the ID of that same child window
    if (*windowFromRoot != *windowFromChild)
    {
        FUNC0(windowFromRoot);
        FUNC0(windowFromChild);
        return;
    }

    FUNC0(windowFromRoot);
    FUNC0(windowFromChild);

    // We are now fairly sure that an EWMH-compliant window manager is running

    Atom* supportedAtoms;
    unsigned long atomCount;

    // Now we need to check the _NET_SUPPORTED property of the root window
    // It should be a list of supported WM protocol and state atoms
    atomCount = FUNC2(_glfw.x11.root,
                                          wmSupported,
                                          XA_ATOM,
                                          (unsigned char**) &supportedAtoms);

    // See which of the atoms we support that are supported by the WM
    _glfw.x11.NET_WM_STATE =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_STATE");
    _glfw.x11.NET_WM_STATE_ABOVE =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_STATE_ABOVE");
    _glfw.x11.NET_WM_STATE_FULLSCREEN =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_STATE_FULLSCREEN");
    _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_STATE_MAXIMIZED_VERT");
    _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_STATE_MAXIMIZED_HORZ");
    _glfw.x11.NET_WM_FULLSCREEN_MONITORS =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_FULLSCREEN_MONITORS");
    _glfw.x11.NET_WM_WINDOW_TYPE =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_WINDOW_TYPE");
    _glfw.x11.NET_WM_WINDOW_TYPE_NORMAL =
        FUNC5(supportedAtoms, atomCount, "_NET_WM_WINDOW_TYPE_NORMAL");
    _glfw.x11.NET_ACTIVE_WINDOW =
        FUNC5(supportedAtoms, atomCount, "_NET_ACTIVE_WINDOW");
    _glfw.x11.NET_FRAME_EXTENTS =
        FUNC5(supportedAtoms, atomCount, "_NET_FRAME_EXTENTS");
    _glfw.x11.NET_REQUEST_FRAME_EXTENTS =
        FUNC5(supportedAtoms, atomCount, "_NET_REQUEST_FRAME_EXTENTS");

    FUNC0(supportedAtoms);
}