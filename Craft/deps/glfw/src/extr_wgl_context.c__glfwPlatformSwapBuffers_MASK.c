#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dc; int /*<<< orphan*/  interval; } ;
struct TYPE_5__ {TYPE_1__ wgl; int /*<<< orphan*/  monitor; } ;
typedef  TYPE_2__ _GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(_GLFWwindow* window)
{
    // HACK: Use DwmFlush when desktop composition is enabled
    if (FUNC1() && !window->monitor)
    {
        int count = FUNC3(window->wgl.interval);
        while (count--)
            FUNC2();
    }

    FUNC0(window->wgl.dc);
}