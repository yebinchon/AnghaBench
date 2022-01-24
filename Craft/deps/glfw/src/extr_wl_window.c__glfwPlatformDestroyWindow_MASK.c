#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ surface; scalar_t__ shell_surface; scalar_t__ native; } ;
struct TYPE_11__ {TYPE_1__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_10__ {TYPE_3__* keyboardFocus; TYPE_3__* pointerFocus; } ;
struct TYPE_12__ {TYPE_2__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(_GLFWwindow* window)
{
    if (window == _glfw.wl.pointerFocus)
    {
        _glfw.wl.pointerFocus = NULL;
        FUNC1(window, GL_FALSE);
    }
    if (window == _glfw.wl.keyboardFocus)
    {
        _glfw.wl.keyboardFocus = NULL;
        FUNC2(window, GL_FALSE);
    }

    FUNC0(window);

    if (window->wl.native)
        FUNC3(window->wl.native);

    if (window->wl.shell_surface)
        FUNC4(window->wl.shell_surface);

    if (window->wl.surface)
        FUNC5(window->wl.surface);
}