#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  handle; } ;
struct TYPE_18__ {TYPE_1__ x11; TYPE_4__* monitor; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_19__ {TYPE_3__* window; } ;
typedef  TYPE_4__ _GLFWmonitor ;
struct TYPE_17__ {int /*<<< orphan*/  display; } ;
struct TYPE_15__ {TYPE_2__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 TYPE_14__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 

void FUNC9(_GLFWwindow* window,
                                   _GLFWmonitor* monitor,
                                   int xpos, int ypos,
                                   int width, int height,
                                   int refreshRate)
{
    if (window->monitor == monitor)
    {
        if (monitor)
        {
            if (monitor->window == window)
                FUNC4(window);
        }
        else
        {
            FUNC2(_glfw.x11.display, window->x11.handle,
                              xpos, ypos, width, height);
        }

        return;
    }

    if (window->monitor)
        FUNC5(window);

    FUNC3(window, monitor);
    FUNC6(window, width, height);
    FUNC7(window);

    if (window->monitor)
    {
        FUNC1(_glfw.x11.display, window->x11.handle);
        if (FUNC8(window))
            FUNC4(window);
    }
    else
    {
        FUNC2(_glfw.x11.display, window->x11.handle,
                          xpos, ypos, width, height);
    }

    FUNC0(_glfw.x11.display);
}