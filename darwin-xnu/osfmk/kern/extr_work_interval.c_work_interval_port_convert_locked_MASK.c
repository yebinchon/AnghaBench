#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct work_interval {int dummy; } ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_WORK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct work_interval*) ; 

__attribute__((used)) static struct work_interval *
FUNC4(ipc_port_t port)
{
	struct work_interval *work_interval = NULL;

	if (!FUNC0(port))
		return NULL;

	if (!FUNC1(port))
		return NULL;

	if (IKOT_WORK_INTERVAL != FUNC2(port))
		return NULL;

	work_interval = (struct work_interval *)port->ip_kobject;

	FUNC3(work_interval);

	return work_interval;
}