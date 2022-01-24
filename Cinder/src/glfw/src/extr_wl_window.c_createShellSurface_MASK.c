#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  shell_surface; scalar_t__ maximized; scalar_t__ title; int /*<<< orphan*/  surface; } ;
struct TYPE_13__ {TYPE_4__ wl; TYPE_3__* monitor; } ;
typedef  TYPE_5__ _GLFWwindow ;
struct TYPE_9__ {int /*<<< orphan*/  shell; } ;
struct TYPE_14__ {TYPE_1__ wl; } ;
struct TYPE_10__ {int /*<<< orphan*/  output; } ;
struct TYPE_11__ {TYPE_2__ wl; } ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  shellSurfaceListener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLFWbool FUNC6(_GLFWwindow* window)
{
    window->wl.shell_surface = FUNC0(_glfw.wl.shell,
                                                          window->wl.surface);
    if (!window->wl.shell_surface)
        return GLFW_FALSE;

    FUNC1(window->wl.shell_surface,
                                  &shellSurfaceListener,
                                  window);

    if (window->wl.title)
        FUNC4(window->wl.shell_surface, window->wl.title);

    if (window->monitor)
    {
        FUNC2(
            window->wl.shell_surface,
            WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT,
            0,
            window->monitor->wl.output);
    }
    else if (window->wl.maximized)
    {
        FUNC3(window->wl.shell_surface, NULL);
    }
    else
    {
        FUNC5(window->wl.shell_surface);
    }

    return GLFW_TRUE;
}