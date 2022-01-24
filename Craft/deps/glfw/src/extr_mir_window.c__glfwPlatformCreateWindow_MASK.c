#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ width; scalar_t__ height; scalar_t__ monitor; } ;
typedef  TYPE_2__ _GLFWwndconfig ;
struct TYPE_10__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  surface; int /*<<< orphan*/  window; } ;
struct TYPE_12__ {TYPE_1__ mir; } ;
typedef  TYPE_3__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
typedef  int /*<<< orphan*/  _GLFWctxconfig ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; } ;
typedef  TYPE_4__ GLFWvidmode ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mir_surface_state_fullscreen ; 

int FUNC7(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!FUNC0(window, ctxconfig, fbconfig))
        return GL_FALSE;

    if (wndconfig->monitor)
    {
        GLFWvidmode mode;
        FUNC2(wndconfig->monitor, &mode);

        FUNC6(window->mir.surface, mir_surface_state_fullscreen);

        if (wndconfig->width > mode.width || wndconfig->height > mode.height)
        {
            FUNC1(GLFW_PLATFORM_ERROR,
                            "Mir: Requested surface size too large: %ix%i",
                            wndconfig->width, wndconfig->height);

            return GL_FALSE;
        }
    }

    window->mir.width  = wndconfig->width;
    window->mir.height = wndconfig->height;

    if (!FUNC3(window))
        return GL_FALSE;

    window->mir.window = FUNC4(
                                   FUNC5(window->mir.surface));

    return GL_TRUE;
}