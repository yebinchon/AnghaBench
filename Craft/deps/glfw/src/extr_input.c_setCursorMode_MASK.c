#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int cursorMode; int cursorPosX; int cursorPosY; } ;
typedef  TYPE_1__ _GLFWwindow ;
struct TYPE_9__ {int cursorPosX; int cursorPosY; TYPE_1__* cursorWindow; } ;

/* Variables and functions */
 int GLFW_CURSOR_DISABLED ; 
 int GLFW_CURSOR_HIDDEN ; 
 int GLFW_CURSOR_NORMAL ; 
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(_GLFWwindow* window, int newMode)
{
    const int oldMode = window->cursorMode;

    if (newMode != GLFW_CURSOR_NORMAL &&
        newMode != GLFW_CURSOR_HIDDEN &&
        newMode != GLFW_CURSOR_DISABLED)
    {
        FUNC0(GLFW_INVALID_ENUM, "Invalid cursor mode");
        return;
    }

    if (oldMode == newMode)
        return;

    window->cursorMode = newMode;

    if (_glfw.cursorWindow == window)
    {
        if (oldMode == GLFW_CURSOR_DISABLED)
        {
            FUNC4(window,
                                      _glfw.cursorPosX,
                                      _glfw.cursorPosY);
        }
        else if (newMode == GLFW_CURSOR_DISABLED)
        {
            int width, height;

            FUNC2(window,
                                      &_glfw.cursorPosX,
                                      &_glfw.cursorPosY);

            window->cursorPosX = _glfw.cursorPosX;
            window->cursorPosY = _glfw.cursorPosY;

            FUNC3(window, &width, &height);
            FUNC4(window, width / 2, height / 2);
        }

        FUNC1(window);
    }
}