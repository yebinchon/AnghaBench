#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ display; scalar_t__ registry; scalar_t__ cursorSurface; scalar_t__ cursorTheme; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(void)
{
    FUNC0();
    FUNC1();
    FUNC2();

    if (_glfw.wl.cursorTheme)
        FUNC3(_glfw.wl.cursorTheme);
    if (_glfw.wl.cursorSurface)
        FUNC7(_glfw.wl.cursorSurface);
    if (_glfw.wl.registry)
        FUNC6(_glfw.wl.registry);
    if (_glfw.wl.display)
        FUNC5(_glfw.wl.display);
    if (_glfw.wl.display)
        FUNC4(_glfw.wl.display);
}