#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ _GLFWwndconfig ;
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  shell_surface; int /*<<< orphan*/  surface; int /*<<< orphan*/  native; } ;
struct TYPE_13__ {TYPE_2__ wl; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {int /*<<< orphan*/  shell; int /*<<< orphan*/  compositor; } ;
struct TYPE_14__ {TYPE_1__ wl; } ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  shellSurfaceListener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static GLboolean FUNC5(_GLFWwindow* window,
                               const _GLFWwndconfig* wndconfig)
{
    window->wl.surface = FUNC0(_glfw.wl.compositor);
    if (!window->wl.surface)
        return GL_FALSE;

    FUNC4(window->wl.surface, window);

    window->wl.native = FUNC1(window->wl.surface,
                                             wndconfig->width,
                                             wndconfig->height);
    if (!window->wl.native)
        return GL_FALSE;

    window->wl.shell_surface = FUNC2(_glfw.wl.shell,
                                                          window->wl.surface);
    if (!window->wl.shell_surface)
        return GL_FALSE;

    FUNC3(window->wl.shell_surface,
                                  &shellSurfaceListener,
                                  window);

    window->wl.width = wndconfig->width;
    window->wl.height = wndconfig->height;

    return GL_TRUE;
}