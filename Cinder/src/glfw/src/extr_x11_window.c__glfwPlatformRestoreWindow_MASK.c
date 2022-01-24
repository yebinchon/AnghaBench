#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  handle; scalar_t__ overrideRedirect; } ;
struct TYPE_12__ {TYPE_2__ x11; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_10__ {int /*<<< orphan*/  display; scalar_t__ NET_WM_STATE_MAXIMIZED_HORZ; scalar_t__ NET_WM_STATE_MAXIMIZED_VERT; scalar_t__ NET_WM_STATE; } ;
struct TYPE_13__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _NET_WM_STATE_REMOVE ; 
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void FUNC7(_GLFWwindow* window)
{
    if (window->x11.overrideRedirect)
    {
        // Override-redirect windows cannot be iconified or restored, as those
        // tasks are performed by the window manager
        FUNC2(GLFW_PLATFORM_ERROR,
                        "X11: Iconification of full screen windows requires a WM that supports EWMH full screen");
        return;
    }

    if (FUNC3(window))
    {
        FUNC1(_glfw.x11.display, window->x11.handle);
        FUNC6(window);
    }
    else if (FUNC4(window))
    {
        if (_glfw.x11.NET_WM_STATE &&
            _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT &&
            _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ)
        {
            FUNC5(window,
                          _glfw.x11.NET_WM_STATE,
                          _NET_WM_STATE_REMOVE,
                          _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT,
                          _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ,
                          1, 0);
        }
    }

    FUNC0(_glfw.x11.display);
}