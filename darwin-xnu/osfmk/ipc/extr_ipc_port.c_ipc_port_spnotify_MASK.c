#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  size_t ipc_table_elems_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  TYPE_3__* ipc_port_request_t ;
typedef  size_t ipc_port_request_index_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {int /*<<< orphan*/  ipr_soright; int /*<<< orphan*/  ipr_name; TYPE_1__* ipr_size; } ;
struct TYPE_14__ {scalar_t__ ip_sprequests; scalar_t__ ip_spimportant; TYPE_3__* ip_requests; } ;
struct TYPE_13__ {size_t its_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPID_OPTION_NORMAL ; 
 TYPE_3__* IPR_NULL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_NULL ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void
FUNC10(
	ipc_port_t	port)
{
	ipc_port_request_index_t index = 0;
	ipc_table_elems_t size = 0;

	/*
	 * If the port has no send-possible request
	 * armed, don't bother to lock the port.
	 */
	if (port->ip_sprequests == 0)
		return;

	FUNC6(port);
	
#if IMPORTANCE_INHERITANCE
	if (port->ip_spimportant != 0) {
		port->ip_spimportant = 0;
		if (ipc_port_importance_delta(port, IPID_OPTION_NORMAL, -1) == TRUE) {
			ip_lock(port);
		}
	}
#endif /* IMPORTANCE_INHERITANCE */

	if (port->ip_sprequests == 0) {
		FUNC7(port);
		return;
	}
	port->ip_sprequests = 0;

revalidate:
	if (FUNC5(port)) {
		ipc_port_request_t requests;

		/* table may change each time port unlocked (reload) */
		requests = port->ip_requests;
		FUNC4(requests != IPR_NULL);

		/*
		 * no need to go beyond table size when first
		 * we entered - those are future notifications.
		 */
		if (size == 0)
			size = requests->ipr_size->its_size;

		/* no need to backtrack either */
		while (++index < size) {
			ipc_port_request_t ipr = &requests[index];
			mach_port_name_t name = ipr->ipr_name;
			ipc_port_t soright = FUNC0(ipr->ipr_soright);
			boolean_t armed = FUNC1(ipr->ipr_soright);

			if (FUNC3(name) && armed && FUNC2(soright)) {
				/* claim send-once right - slot still inuse */
				ipr->ipr_soright = IP_NULL;
				FUNC7(port);

				FUNC8(soright, name);

				FUNC6(port);
				goto revalidate;
			}
		}
	}
	FUNC7(port);
	return;
}