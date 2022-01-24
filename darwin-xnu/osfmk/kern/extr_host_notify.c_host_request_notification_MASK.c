#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
typedef  scalar_t__ host_t ;
typedef  TYPE_2__* host_notify_t ;
typedef  size_t host_flavor_t ;
struct TYPE_12__ {TYPE_1__* port; } ;
struct TYPE_11__ {scalar_t__ ip_tempowner; } ;

/* Variables and functions */
 size_t HOST_NOTIFY_TYPE_MAX ; 
 scalar_t__ HOST_NULL ; 
 int /*<<< orphan*/  IKOT_HOST_NOTIFY ; 
 scalar_t__ IKOT_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_CAPABILITY ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host_notify_lock ; 
 int /*<<< orphan*/ * host_notify_queue ; 
 int /*<<< orphan*/  host_notify_zone ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 

kern_return_t
FUNC11(
	host_t					host,
	host_flavor_t			notify_type,
	ipc_port_t				port)
{
	host_notify_t		entry;

	if (host == HOST_NULL)
		return (KERN_INVALID_ARGUMENT);

	if (!FUNC0(port))
		return (KERN_INVALID_CAPABILITY);

	if (notify_type > HOST_NOTIFY_TYPE_MAX || notify_type < 0)
		return (KERN_INVALID_ARGUMENT);

	entry = (host_notify_t)FUNC9(host_notify_zone);
	if (entry == NULL)
		return (KERN_RESOURCE_SHORTAGE);

	FUNC7(&host_notify_lock);

	FUNC4(port);
	if (!FUNC2(port) || port->ip_tempowner || FUNC3(port) != IKOT_NONE) {
		FUNC5(port);

		FUNC8(&host_notify_lock);
		FUNC10(host_notify_zone, entry);

		return (KERN_FAILURE);
	}

	entry->port = port;
	FUNC6(port, (ipc_kobject_t)entry, IKOT_HOST_NOTIFY);
	FUNC5(port);

	FUNC1(&host_notify_queue[notify_type], (queue_entry_t)entry);
	FUNC8(&host_notify_lock);

	return (KERN_SUCCESS);
}