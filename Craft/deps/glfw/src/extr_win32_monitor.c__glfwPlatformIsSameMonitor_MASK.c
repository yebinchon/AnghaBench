#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  displayName; } ;
struct TYPE_6__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
typedef  int GLboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GLboolean FUNC1(_GLFWmonitor* first, _GLFWmonitor* second)
{
    return FUNC0(first->win32.displayName, second->win32.displayName) == 0;
}