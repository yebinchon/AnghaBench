#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ handle; } ;
struct TYPE_9__ {TYPE_3__* cursor; TYPE_1__ win32; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {TYPE_2__ win32; } ;
typedef  int /*<<< orphan*/  POINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_ARROW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(_GLFWwindow* window)
{
    POINT pos;

    FUNC0(NULL);

    if (FUNC1(&pos))
    {
        if (FUNC4(pos) == window->win32.handle)
        {
            if (window->cursor)
                FUNC3(window->cursor->win32.handle);
            else
                FUNC3(FUNC2(NULL, IDC_ARROW));
        }
    }
}