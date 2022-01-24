#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  handle; } ;
struct TYPE_14__ {TYPE_1__ x11; int /*<<< orphan*/  resizable; scalar_t__ monitor; int /*<<< orphan*/  videoMode; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_15__ {int flags; int min_width; int max_width; int min_height; int max_height; } ;
typedef  TYPE_4__ XSizeHints ;
struct TYPE_13__ {int /*<<< orphan*/  display; int /*<<< orphan*/  NET_WM_STATE_FULLSCREEN; int /*<<< orphan*/  NET_WM_STATE; } ;
struct TYPE_17__ {TYPE_2__ x11; } ;
struct TYPE_16__ {int width; int height; } ;
typedef  TYPE_5__ GLFWvidmode ;

/* Variables and functions */
 int PMaxSize ; 
 int PMinSize ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC7(_GLFWwindow* window, int width, int height)
{
    if (window->monitor)
    {
        FUNC6(window->monitor, &window->videoMode);

        if (!_glfw.x11.NET_WM_STATE || !_glfw.x11.NET_WM_STATE_FULLSCREEN)
        {
            GLFWvidmode mode;
            FUNC5(window->monitor, &mode);
            FUNC3(_glfw.x11.display, window->x11.handle,
                          mode.width, mode.height);
        }
    }
    else
    {
        if (!window->resizable)
        {
            // Update window size restrictions to match new window size

            XSizeHints* hints = FUNC0();

            hints->flags |= (PMinSize | PMaxSize);
            hints->min_width  = hints->max_width  = width;
            hints->min_height = hints->max_height = height;

            FUNC4(_glfw.x11.display, window->x11.handle, hints);
            FUNC2(hints);
        }

        FUNC3(_glfw.x11.display, window->x11.handle, width, height);
    }

    FUNC1(_glfw.x11.display);
}