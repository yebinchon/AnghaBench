#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/ * dc; } ;
struct TYPE_7__ {TYPE_1__ wgl; } ;
struct TYPE_8__ {TYPE_2__ context; } ;
typedef  TYPE_3__ _GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window)
{
    if (window)
    {
        if (FUNC2(window->context.wgl.dc, window->context.wgl.handle))
            FUNC1(window);
        else
        {
            FUNC0(GLFW_PLATFORM_ERROR,
                            "WGL: Failed to make context current");
            FUNC1(NULL);
        }
    }
    else
    {
        if (!FUNC2(NULL, NULL))
        {
            FUNC0(GLFW_PLATFORM_ERROR,
                            "WGL: Failed to clear current context");
        }

        FUNC1(NULL);
    }
}