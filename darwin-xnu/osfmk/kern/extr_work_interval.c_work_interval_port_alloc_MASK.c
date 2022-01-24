#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct work_interval {scalar_t__ wi_port; } ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_WORK_INTERVAL ; 
 scalar_t__ IP_NULL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static ipc_port_t
FUNC9(struct work_interval *work_interval)
{
	ipc_port_t work_interval_port = FUNC4();

	if (work_interval_port == IP_NULL)
		FUNC8("failed to allocate work interval port");

	FUNC1(work_interval->wi_port == IP_NULL);

	FUNC2(work_interval_port);
	FUNC3(work_interval_port, (ipc_kobject_t)work_interval,
	                           IKOT_WORK_INTERVAL);

	ipc_port_t notify_port = FUNC6(work_interval_port);
	ipc_port_t old_notify_port = IP_NULL;
	FUNC7(work_interval_port, 1, notify_port, &old_notify_port);
	/* port unlocked */

	FUNC1(old_notify_port == IP_NULL);

	/* This is the only make-send that will happen on this port */
	ipc_port_t send_port = FUNC5(work_interval_port);
	FUNC1(FUNC0(send_port));

	work_interval->wi_port = work_interval_port;

	return send_port;
}