#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cursorMode; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  XEvent ;
struct TYPE_6__ {int /*<<< orphan*/  display; } ;
struct TYPE_8__ {TYPE_2__* cursorWindow; TYPE_1__ x11; } ;

/* Variables and functions */
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
    int count = FUNC1(_glfw.x11.display);
    while (count--)
    {
        XEvent event;
        FUNC0(_glfw.x11.display, &event);
        FUNC4(&event);
    }

    _GLFWwindow* window = _glfw.cursorWindow;
    if (window && window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        int width, height;
        FUNC2(window, &width, &height);
        FUNC3(window, width / 2, height / 2);
    }
}