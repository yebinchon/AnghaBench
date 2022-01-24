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
struct TYPE_10__ {int /*<<< orphan*/  handle; } ;
struct TYPE_12__ {TYPE_1__ x11; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_11__ {int /*<<< orphan*/  display; int /*<<< orphan*/  restoreCursorPosY; int /*<<< orphan*/  restoreCursorPosX; TYPE_3__* disabledCursorWindow; int /*<<< orphan*/  cursor; } ;
struct TYPE_13__ {TYPE_2__ x11; } ;

/* Variables and functions */
 int ButtonPressMask ; 
 int ButtonReleaseMask ; 
 int /*<<< orphan*/  CurrentTime ; 
 int GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  GrabModeAsync ; 
 int PointerMotionMask ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void FUNC7(_GLFWwindow* window, int mode)
{
    if (mode == GLFW_CURSOR_DISABLED)
    {
        _glfw.x11.disabledCursorWindow = window;
        FUNC3(window,
                                  &_glfw.x11.restoreCursorPosX,
                                  &_glfw.x11.restoreCursorPosY);
        FUNC5(window);
        FUNC1(_glfw.x11.display, window->x11.handle, True,
                     ButtonPressMask | ButtonReleaseMask | PointerMotionMask,
                     GrabModeAsync, GrabModeAsync,
                     window->x11.handle, _glfw.x11.cursor, CurrentTime);
    }
    else if (_glfw.x11.disabledCursorWindow == window)
    {
        _glfw.x11.disabledCursorWindow = NULL;
        FUNC2(_glfw.x11.display, CurrentTime);
        FUNC4(window,
                                  _glfw.x11.restoreCursorPosX,
                                  _glfw.x11.restoreCursorPosY);
    }

    FUNC6(window);
    FUNC0(_glfw.x11.display);
}