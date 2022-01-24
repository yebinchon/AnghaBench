#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ handle; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int /*<<< orphan*/  CLIPBOARD; int /*<<< orphan*/  display; int /*<<< orphan*/  clipboardString; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(_GLFWwindow* window, const char* string)
{
    FUNC3(_glfw.x11.clipboardString);
    _glfw.x11.clipboardString = FUNC4(string);

    FUNC1(_glfw.x11.display,
                       _glfw.x11.CLIPBOARD,
                       window->x11.handle, CurrentTime);

    if (FUNC0(_glfw.x11.display, _glfw.x11.CLIPBOARD) !=
        window->x11.handle)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "X11: Failed to become owner of clipboard selection");
    }
}