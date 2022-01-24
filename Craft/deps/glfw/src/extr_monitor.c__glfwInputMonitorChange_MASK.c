#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * monitor; struct TYPE_5__* next; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_4__ {int /*<<< orphan*/  (* monitor ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int monitorCount; int /*<<< orphan*/ ** monitors; TYPE_1__ callbacks; TYPE_2__* windowListHead; } ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_CONNECTED ; 
 int /*<<< orphan*/  GLFW_DISCONNECTED ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
    int i, j, monitorCount = _glfw.monitorCount;
    _GLFWmonitor** monitors = _glfw.monitors;

    _glfw.monitors = FUNC2(&_glfw.monitorCount);

    // Re-use still connected monitor objects

    for (i = 0;  i < _glfw.monitorCount;  i++)
    {
        for (j = 0;  j < monitorCount;  j++)
        {
            if (FUNC3(_glfw.monitors[i], monitors[j]))
            {
                FUNC0(_glfw.monitors[i]);
                _glfw.monitors[i] = monitors[j];
                break;
            }
        }
    }

    // Find and report disconnected monitors (not in the new list)

    for (i = 0;  i < monitorCount;  i++)
    {
        _GLFWwindow* window;

        for (j = 0;  j < _glfw.monitorCount;  j++)
        {
            if (monitors[i] == _glfw.monitors[j])
                break;
        }

        if (j < _glfw.monitorCount)
            continue;

        for (window = _glfw.windowListHead;  window;  window = window->next)
        {
            if (window->monitor == monitors[i])
                window->monitor = NULL;
        }

        if (_glfw.callbacks.monitor)
            _glfw.callbacks.monitor((GLFWmonitor*) monitors[i], GLFW_DISCONNECTED);
    }

    // Find and report newly connected monitors (not in the old list)
    // Re-used monitor objects are then removed from the old list to avoid
    // having them destroyed at the end of this function

    for (i = 0;  i < _glfw.monitorCount;  i++)
    {
        for (j = 0;  j < monitorCount;  j++)
        {
            if (_glfw.monitors[i] == monitors[j])
            {
                monitors[j] = NULL;
                break;
            }
        }

        if (j < monitorCount)
            continue;

        if (_glfw.callbacks.monitor)
            _glfw.callbacks.monitor((GLFWmonitor*) _glfw.monitors[i], GLFW_CONNECTED);
    }

    FUNC1(monitors, monitorCount);
}