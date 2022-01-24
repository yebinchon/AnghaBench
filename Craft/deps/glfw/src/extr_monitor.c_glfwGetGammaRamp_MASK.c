#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  const currentRamp; } ;
typedef  TYPE_1__ _GLFWmonitor ;
typedef  int /*<<< orphan*/  GLFWmonitor ;
typedef  int /*<<< orphan*/  GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

const GLFWgammaramp* FUNC3(GLFWmonitor* handle)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;

    FUNC0(NULL);

    FUNC1(&monitor->currentRamp);
    FUNC2(monitor, &monitor->currentRamp);

    return &monitor->currentRamp;
}