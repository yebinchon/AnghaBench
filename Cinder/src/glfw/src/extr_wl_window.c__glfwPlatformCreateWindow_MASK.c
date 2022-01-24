#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ visible; scalar_t__ title; } ;
typedef  TYPE_2__ _GLFWwndconfig ;
struct TYPE_13__ {int visible; int monitorsSize; scalar_t__ monitorsCount; int /*<<< orphan*/  monitors; int /*<<< orphan*/ * currentCursor; int /*<<< orphan*/ * shell_surface; int /*<<< orphan*/  title; } ;
struct TYPE_15__ {TYPE_1__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
struct TYPE_16__ {scalar_t__ client; } ;
typedef  TYPE_4__ _GLFWctxconfig ;

/* Variables and functions */
 int GLFW_FALSE ; 
 scalar_t__ GLFW_NO_API ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

int FUNC6(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!FUNC4(window, wndconfig))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (!FUNC1())
            return GLFW_FALSE;
        if (!FUNC0(window, ctxconfig, fbconfig))
            return GLFW_FALSE;
    }

    if (wndconfig->title)
        window->wl.title = FUNC5(wndconfig->title);

    if (wndconfig->visible)
    {
        if (!FUNC3(window))
            return GLFW_FALSE;

        window->wl.visible = GLFW_TRUE;
    }
    else
    {
        window->wl.shell_surface = NULL;
        window->wl.visible = GLFW_FALSE;
    }

    window->wl.currentCursor = NULL;

    window->wl.monitors = FUNC2(1, sizeof(_GLFWmonitor*));
    window->wl.monitorsCount = 0;
    window->wl.monitorsSize = 1;

    return GLFW_TRUE;
}