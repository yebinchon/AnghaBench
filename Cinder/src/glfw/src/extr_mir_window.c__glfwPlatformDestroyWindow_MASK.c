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
struct TYPE_7__ {int /*<<< orphan*/  (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * surface; } ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ mir; } ;
typedef  TYPE_3__ _GLFWwindow ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

void FUNC3(_GLFWwindow* window)
{
    if (FUNC0(window->mir.surface))
    {
        FUNC1(window->mir.surface);
        window->mir.surface = NULL;
    }

    if (window->context.destroy)
        window->context.destroy(window);
}