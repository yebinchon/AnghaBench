#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_voucher_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  scalar_t__ ipc_kobject_t ;
struct TYPE_25__ {scalar_t__ ip_kobject; int ip_srights; int /*<<< orphan*/  ip_mscount; struct TYPE_25__* ip_nsrequest; } ;
struct TYPE_24__ {TYPE_2__* iv_port; int /*<<< orphan*/  iv_refs; } ;

/* Variables and functions */
 scalar_t__ IKOT_VOUCHER ; 
 TYPE_2__* IP_NULL ; 
 int FUNC0 (TYPE_2__*) ; 
 TYPE_1__* IV_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

ipc_port_t
FUNC15(ipc_voucher_t voucher)
{
	ipc_port_t	port, send;

	if (IV_NULL == voucher)
		return (IP_NULL);

	FUNC2(FUNC14(&voucher->iv_refs) > 0);

	/* create a port if needed */
	port = voucher->iv_port;
	if (!FUNC0(port)) {
		port = FUNC8();
		FUNC2(FUNC0(port));
		FUNC7(port, (ipc_kobject_t) voucher, IKOT_VOUCHER);

		/* If we lose the race, deallocate and pick up the other guy's port */
		if (!FUNC1(IP_NULL, port, &voucher->iv_port)) {
			FUNC9(port);
			port = voucher->iv_port;
			FUNC2(FUNC4(port) == IKOT_VOUCHER);
			FUNC2(port->ip_kobject == (ipc_kobject_t)voucher);
		}
	}
	
	FUNC5(port);
	FUNC2(FUNC3(port));
	send = FUNC10(port);

	if (1 == port->ip_srights) {
		ipc_port_t old_notify;

		/* transfer our ref to the port, and arm the no-senders notification */
		FUNC2(IP_NULL == port->ip_nsrequest);
		FUNC12(port, port->ip_mscount, FUNC11(port), &old_notify);
		/* port unlocked */
		FUNC2(IP_NULL == old_notify);
	} else {
		/* piggyback on the existing port reference, so consume ours */
		FUNC6(port);
		FUNC13(voucher);
	}
	return (send);
}