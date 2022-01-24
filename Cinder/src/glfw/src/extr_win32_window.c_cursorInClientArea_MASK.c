#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ handle; } ;
struct TYPE_8__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLFWbool FUNC5(_GLFWwindow* window)
{
    RECT area;
    POINT pos;

    if (!FUNC2(&pos))
        return GLFW_FALSE;

    if (FUNC4(pos) != window->win32.handle)
        return GLFW_FALSE;

    FUNC1(window->win32.handle, &area);
    FUNC0(window->win32.handle, (POINT*) &area.left);
    FUNC0(window->win32.handle, (POINT*) &area.right);

    return FUNC3(&area, pos);
}