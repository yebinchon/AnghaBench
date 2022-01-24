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
struct timespec {long tv_sec; long tv_nsec; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_mutex; int /*<<< orphan*/  event_cond; int /*<<< orphan*/  event_queue; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(double timeout)
{
    FUNC4(&_glfw.mir.event_mutex);

    if (FUNC2(_glfw.mir.event_queue))
    {
        struct timespec time;
        FUNC1(CLOCK_REALTIME, &time);
        time.tv_sec += (long) timeout;
        time.tv_nsec += (long) ((timeout - (long) timeout) * 1e9);
        FUNC3(&_glfw.mir.event_cond, &_glfw.mir.event_mutex, &time);
    }

    FUNC5(&_glfw.mir.event_mutex);

    FUNC0();
}