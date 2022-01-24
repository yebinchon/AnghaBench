#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int virtualCursorPosX; int virtualCursorPosY; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  MirPointerEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  mir_pointer_axis_hscroll ; 
 int /*<<< orphan*/  mir_pointer_axis_vscroll ; 
 int /*<<< orphan*/  mir_pointer_axis_x ; 
 int /*<<< orphan*/  mir_pointer_axis_y ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window,
                                const MirPointerEvent* pointer_event)
{
    int current_x = window->virtualCursorPosX;
    int current_y = window->virtualCursorPosY;
    int x  = FUNC2(pointer_event, mir_pointer_axis_x);
    int y  = FUNC2(pointer_event, mir_pointer_axis_y);
    int dx = FUNC2(pointer_event, mir_pointer_axis_hscroll);
    int dy = FUNC2(pointer_event, mir_pointer_axis_vscroll);

    FUNC0(window, x, y);
    if (dx != 0 || dy != 0)
      FUNC1(window, dx, dy);
}