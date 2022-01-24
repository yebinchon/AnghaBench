#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWwndconfig ;
struct TYPE_20__ {scalar_t__ monitor; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
struct TYPE_21__ {scalar_t__ client; scalar_t__ source; } ;
typedef  TYPE_3__ _GLFWctxconfig ;
typedef  int /*<<< orphan*/  Visual ;
struct TYPE_19__ {int /*<<< orphan*/  display; int /*<<< orphan*/  screen; } ;
struct TYPE_18__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GLFW_FALSE ; 
 scalar_t__ GLFW_NATIVE_CONTEXT_API ; 
 scalar_t__ GLFW_NO_API ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_17__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

int FUNC14(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    Visual* visual;
    int depth;

    if (ctxconfig->client == GLFW_NO_API)
    {
        visual = FUNC1(_glfw.x11.display, _glfw.x11.screen);
        depth = FUNC0(_glfw.x11.display, _glfw.x11.screen);
    }
    else
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!FUNC8())
                return GLFW_FALSE;
            if (!FUNC4(ctxconfig, fbconfig, &visual, &depth))
                return GLFW_FALSE;
        }
        else
        {
            if (!FUNC7())
                return GLFW_FALSE;
            if (!FUNC3(ctxconfig, fbconfig, &visual, &depth))
                return GLFW_FALSE;
        }
    }

    if (!FUNC12(window, wndconfig, visual, depth))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!FUNC6(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else
        {
            if (!FUNC5(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
    }

    if (window->monitor)
    {
        FUNC9(window);
        FUNC13(window);
        if (!FUNC10(window))
            return GLFW_FALSE;

        FUNC11(window);
    }

    FUNC2(_glfw.x11.display);
    return GLFW_TRUE;
}