#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct TYPE_5__ {TYPE_4__ originalRamp; } ;
typedef  TYPE_1__ _GLFWmonitor ;
typedef  int /*<<< orphan*/  GLFWmonitor ;
typedef  int /*<<< orphan*/  GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

void FUNC3(GLFWmonitor* handle, const GLFWgammaramp* ramp)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;

    FUNC0();

    if (!monitor->originalRamp.size)
        FUNC1(monitor, &monitor->originalRamp);

    FUNC2(monitor, ramp);
}