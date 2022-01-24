#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * dc; int /*<<< orphan*/ * context; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {TYPE_2__ wgl; TYPE_1__ win32; } ;
typedef  TYPE_3__ _GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(_GLFWwindow* window)
{
    if (window->wgl.context)
    {
        FUNC1(window->wgl.context);
        window->wgl.context = NULL;
    }

    if (window->wgl.dc)
    {
        FUNC0(window->win32.handle, window->wgl.dc);
        window->wgl.dc = NULL;
    }
}