#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  handle; } ;
struct TYPE_12__ {TYPE_4__ x11; TYPE_2__* cursor; } ;
typedef  TYPE_5__ _GLFWwindow ;
struct TYPE_10__ {int /*<<< orphan*/  display; } ;
struct TYPE_13__ {TYPE_3__ x11; } ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ _glfw ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window)
{
    FUNC2(_glfw.x11.display, CurrentTime);

    if (window->cursor)
    {
        FUNC0(_glfw.x11.display, window->x11.handle,
                      window->cursor->x11.handle);
    }
    else
        FUNC1(_glfw.x11.display, window->x11.handle);
}