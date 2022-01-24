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
struct TYPE_3__ {int /*<<< orphan*/  helperWindowHandle; int /*<<< orphan*/  foregroundLockTimeout; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;

/* Variables and functions */
 int GLFW_FALSE ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  PROCESS_PER_MONITOR_DPI_AWARE ; 
 int /*<<< orphan*/  SPIF_SENDCHANGE ; 
 int /*<<< orphan*/  SPI_GETFOREGROUNDLOCKTIMEOUT ; 
 int /*<<< orphan*/  SPI_SETFOREGROUNDLOCKTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(void)
{
    if (!FUNC3())
        return GLFW_FALSE;

    // To make SetForegroundWindow work as we want, we need to fiddle
    // with the FOREGROUNDLOCKTIMEOUT system setting (we do this as early
    // as possible in the hope of still being the foreground process)
    FUNC0(SPI_GETFOREGROUNDLOCKTIMEOUT, 0,
                          &_glfw.win32.foregroundLockTimeout, 0);
    FUNC0(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, FUNC1(0),
                          SPIF_SENDCHANGE);

    if (!FUNC11())
        return GLFW_FALSE;

    FUNC10();

    if (&_glfw_SetProcessDpiAwareness)
        FUNC8(PROCESS_PER_MONITOR_DPI_AWARE);
    else if (&_glfw_SetProcessDPIAware)
        FUNC7();

    if (!FUNC6())
        return GLFW_FALSE;

    _glfw.win32.helperWindowHandle = FUNC9();
    if (!_glfw.win32.helperWindowHandle)
        return GLFW_FALSE;

    FUNC5();

    FUNC4();
    FUNC2();

    return GLFW_TRUE;
}