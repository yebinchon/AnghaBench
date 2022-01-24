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
struct TYPE_4__ {int interval; int /*<<< orphan*/  (* SwapIntervalEXT ) (int) ;scalar_t__ EXT_swap_control; } ;
struct TYPE_5__ {TYPE_1__ wgl; int /*<<< orphan*/  monitor; } ;
typedef  TYPE_2__ _GLFWwindow ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(int interval)
{
    _GLFWwindow* window = FUNC1();

    window->wgl.interval = interval;

    // HACK: Disable WGL swap interval when desktop composition is enabled to
    //       avoid interfering with DWM vsync
    if (FUNC0() && !window->monitor)
        interval = 0;

    if (window->wgl.EXT_swap_control)
        window->wgl.SwapIntervalEXT(interval);
}