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
struct TYPE_3__ {int /*<<< orphan*/  connection; int /*<<< orphan*/  event_mutex; int /*<<< orphan*/  event_queue; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;

/* Variables and functions */
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
    FUNC1();
    FUNC2();
    FUNC3();

    FUNC0(_glfw.mir.event_queue);

    FUNC5(&_glfw.mir.event_mutex);

    FUNC4(_glfw.mir.connection);
}