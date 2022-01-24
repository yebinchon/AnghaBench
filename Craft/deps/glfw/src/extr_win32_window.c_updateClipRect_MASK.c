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
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  POINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window)
{
    RECT clipRect;
    FUNC2(window->win32.handle, &clipRect);
    FUNC0(window->win32.handle, (POINT*) &clipRect.left);
    FUNC0(window->win32.handle, (POINT*) &clipRect.right);
    FUNC1(&clipRect);
}