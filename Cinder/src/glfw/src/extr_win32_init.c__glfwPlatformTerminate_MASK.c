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
struct TYPE_3__ {int /*<<< orphan*/  clipboardString; int /*<<< orphan*/  foregroundLockTimeout; scalar_t__ helperWindowHandle; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SPIF_SENDCHANGE ; 
 int /*<<< orphan*/  SPI_SETFOREGROUNDLOCKTIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void)
{
    if (_glfw.win32.helperWindowHandle)
        FUNC0(_glfw.win32.helperWindowHandle);

    FUNC7();

    // Restore previous foreground lock timeout system setting
    FUNC1(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
                          FUNC2(_glfw.win32.foregroundLockTimeout),
                          SPIF_SENDCHANGE);

    FUNC8(_glfw.win32.clipboardString);

    FUNC6();
    FUNC3();

    FUNC4();
    FUNC5();

    FUNC9();
}