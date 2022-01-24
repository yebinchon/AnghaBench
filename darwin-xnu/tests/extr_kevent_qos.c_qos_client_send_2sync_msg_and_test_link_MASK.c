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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 size_t ENV_QOS_AFTER_OVERRIDE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KEVENT_QOS_SERVICE_NAME ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_END ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bootstrap_port ; 
 int /*<<< orphan*/ * g_expected_qos ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC10(void *arg)
{
	mach_port_t qos_send_port;
	mach_port_t special_reply_port;
	boolean_t in_effect = FALSE;
	kern_return_t kr;
	unsigned long expected_result = (unsigned long) arg;

	kr = FUNC5(bootstrap_port,
			KEVENT_QOS_SERVICE_NAME, &qos_send_port);
	T_QUIET; FUNC1(kr, "client bootstrap_look_up");

	/* start monitoring sync ipc link */
	kr = FUNC6(&special_reply_port);
	T_QUIET; FUNC1(kr, "mach_sync_ipc_link_monitoring_start");

	/* Send the first message to msg port */
	FUNC9(qos_send_port, special_reply_port, MACH_PORT_NULL,
		(uint32_t)FUNC4(g_expected_qos[ENV_QOS_AFTER_OVERRIDE], 0, 0), 0);

	/* wait for the reply */
	kr = FUNC8(special_reply_port, qos_send_port);
	T_QUIET;FUNC1(kr, "receive");

	/* Send the second message to msg port */
	FUNC9(qos_send_port, special_reply_port, MACH_PORT_NULL,
		(uint32_t)FUNC4(g_expected_qos[ENV_QOS_AFTER_OVERRIDE], 0, 0), 0);

	/* wait for the reply */
	kr = FUNC8(special_reply_port, qos_send_port);
	T_QUIET;FUNC1(kr, "receive");

	/* stop monitoring link */
	kr = FUNC7(special_reply_port, &in_effect);
	T_QUIET; FUNC1(kr, "mach_sync_ipc_link_monitoring_stop");

	if (!in_effect)
		FUNC3("Link was broken");
	else
		FUNC3("Link correct");

	if (expected_result == 1)
		FUNC2(in_effect, "special reply port link after rcv");
	else
		FUNC0(in_effect, "special reply port link after rcv");
	T_END;
}