#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
struct TYPE_5__ {TYPE_1__* exc_actions; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * label; scalar_t__ port; } ;

/* Variables and functions */
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 int /*<<< orphan*/  HOST_PORT ; 
 int /*<<< orphan*/  HOST_PRIV_PORT ; 
 int /*<<< orphan*/  HOST_SECURITY_PORT ; 
 int /*<<< orphan*/  IKOT_HOST ; 
 int /*<<< orphan*/  IKOT_HOST_PRIV ; 
 int /*<<< orphan*/  IKOT_HOST_SECURITY ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  host_notify_lock_attr ; 
 int /*<<< orphan*/  host_notify_lock_grp ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  master_processor ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  pset0 ; 
 TYPE_2__ realhost ; 

void FUNC10(void)
{
	ipc_port_t	port;
	int i;

	FUNC8(&realhost.lock, &host_notify_lock_grp, &host_notify_lock_attr);

	/*
	 *	Allocate and set up the two host ports.
	 */
	port = FUNC1();
	if (port == IP_NULL)
		FUNC9("ipc_host_init");

	FUNC0(port, (ipc_kobject_t) &realhost, IKOT_HOST_SECURITY);
	FUNC7(&realhost, HOST_SECURITY_PORT,
				FUNC2(port));

	port = FUNC1();
	if (port == IP_NULL)
		FUNC9("ipc_host_init");

	FUNC0(port, (ipc_kobject_t) &realhost, IKOT_HOST);
	FUNC7(&realhost, HOST_PORT,
				FUNC2(port));

	port = FUNC1();
	if (port == IP_NULL)
		FUNC9("ipc_host_init");

	FUNC0(port, (ipc_kobject_t) &realhost, IKOT_HOST_PRIV);
	FUNC7(&realhost, HOST_PRIV_PORT,
				FUNC2(port));

	/* the rest of the special ports will be set up later */

	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
			realhost.exc_actions[i].port = IP_NULL;
			/* The mac framework is not yet initialized, so we defer
			 * initializing the labels to later, when they are set
			 * for the first time. */
			realhost.exc_actions[i].label = NULL;
		}/* for */

	/*
	 *	Set up ipc for default processor set.
	 */
	FUNC6(&pset0);
	FUNC5(&pset0);

	/*
	 *	And for master processor
	 */
	FUNC4(master_processor);
	FUNC3(master_processor);
}