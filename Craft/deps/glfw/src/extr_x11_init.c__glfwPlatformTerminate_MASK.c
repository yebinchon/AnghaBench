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
struct TYPE_3__ {int /*<<< orphan*/ * display; int /*<<< orphan*/ * im; int /*<<< orphan*/  clipboardString; scalar_t__ cursor; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef  scalar_t__ Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
    if (_glfw.x11.cursor)
    {
        FUNC2(_glfw.x11.display, _glfw.x11.cursor);
        _glfw.x11.cursor = (Cursor) 0;
    }

    FUNC5(_glfw.x11.clipboardString);

    if (_glfw.x11.im)
    {
        FUNC1(_glfw.x11.im);
        _glfw.x11.im = NULL;
    }

    FUNC4();

    if (_glfw.x11.display)
    {
        FUNC0(_glfw.x11.display);
        _glfw.x11.display = NULL;
    }

    // NOTE: This needs to be done after XCloseDisplay, as libGL registers
    //       internal cleanup callbacks in libX11
    FUNC3();
}