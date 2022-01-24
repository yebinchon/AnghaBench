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
struct wl_cursor {int /*<<< orphan*/ * images; } ;
struct TYPE_7__ {int /*<<< orphan*/  image; } ;
struct TYPE_8__ {TYPE_2__ wl; } ;
typedef  TYPE_3__ _GLFWcursor ;
struct TYPE_6__ {int /*<<< orphan*/  cursorTheme; } ;
struct TYPE_9__ {TYPE_1__ wl; } ;

/* Variables and functions */
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GLFW_TRUE ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct wl_cursor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(_GLFWcursor* cursor, int shape)
{
    struct wl_cursor* standardCursor;

    standardCursor = FUNC2(_glfw.wl.cursorTheme,
                                                FUNC1(shape));
    if (!standardCursor)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Standard cursor \"%s\" not found",
                        FUNC1(shape));
        return GLFW_FALSE;
    }

    cursor->wl.image = standardCursor->images[0];
    return GLFW_TRUE;
}