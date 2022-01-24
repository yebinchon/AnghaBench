#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * context; } ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_11__ {TYPE_2__ glx; TYPE_1__ x11; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {int /*<<< orphan*/  display; } ;
struct TYPE_12__ {TYPE_3__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  None ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(_GLFWwindow* window)
{
    if (window)
    {
        FUNC1(_glfw.x11.display,
                             window->x11.handle,
                             window->glx.context);
    }
    else
        FUNC1(_glfw.x11.display, None, NULL);

    FUNC0(window);
}