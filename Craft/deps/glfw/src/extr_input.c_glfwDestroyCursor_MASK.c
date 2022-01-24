#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* cursor; struct TYPE_6__* next; } ;
typedef  TYPE_1__ _GLFWwindow ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_2__ _GLFWcursor ;
struct TYPE_8__ {TYPE_2__* cursorListHead; TYPE_1__* windowListHead; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWcursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(GLFWcursor* handle)
{
    _GLFWcursor* cursor = (_GLFWcursor*) handle;

    FUNC0();

    if (cursor == NULL)
        return;

    // Make sure the cursor is not being used by any window
    {
        _GLFWwindow* window;

        for (window = _glfw.windowListHead;  window;  window = window->next)
        {
            if (window->cursor == cursor)
                FUNC3((GLFWwindow*) window, NULL);
        }
    }

    FUNC1(cursor);

    // Unlink cursor from global linked list
    {
        _GLFWcursor** prev = &_glfw.cursorListHead;

        while (*prev != cursor)
            prev = &((*prev)->next);

        *prev = cursor->next;
    }

    FUNC2(cursor);
}