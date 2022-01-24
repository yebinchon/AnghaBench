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
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  XPointer ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_3__ {int /*<<< orphan*/  context; int /*<<< orphan*/  display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ _glfw ; 

__attribute__((used)) static _GLFWwindow* FUNC1(Window handle)
{
    _GLFWwindow* window;

    if (FUNC0(_glfw.x11.display,
                     handle,
                     _glfw.x11.context,
                     (XPointer*) &window) != 0)
    {
        return NULL;
    }

    return window;
}