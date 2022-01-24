#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wl_display {int dummy; } ;
struct pollfd {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_5__ {struct wl_display* display; } ;
struct TYPE_7__ {TYPE_2__* windowListHead; TYPE_1__ wl; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  POLLIN ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl_display*) ; 
 scalar_t__ FUNC4 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl_display*) ; 
 scalar_t__ FUNC6 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_display*) ; 

__attribute__((used)) static void
FUNC8(int timeout)
{
    struct wl_display* display = _glfw.wl.display;
    struct pollfd fds[] = {
        { FUNC5(display), POLLIN },
    };

    while (FUNC6(display) != 0)
        FUNC3(display);

    // If an error different from EAGAIN happens, we have likely been
    // disconnected from the Wayland session, try to handle that the best we
    // can.
    if (FUNC4(display) < 0 && errno != EAGAIN)
    {
        _GLFWwindow* window = _glfw.windowListHead;
        while (window)
        {
            FUNC0(window);
            window = window->next;
        }
        FUNC2(display);
        return;
    }

    if (FUNC1(fds, 1, timeout) > 0)
    {
        FUNC7(display);
        FUNC3(display);
    }
    else
    {
        FUNC2(display);
    }
}