#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  TYPE_1__* ipc_table_size_t ;
typedef  size_t ipc_table_elems_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  TYPE_3__* ipc_port_request_t ;
typedef  size_t ipc_port_request_index_t ;
struct TYPE_12__ {int /*<<< orphan*/  ipr_soright; int /*<<< orphan*/  ipr_name; TYPE_1__* ipr_size; } ;
struct TYPE_11__ {TYPE_3__* ip_requests; } ;
struct TYPE_10__ {size_t its_size; } ;

/* Variables and functions */
 TYPE_3__* IPR_NULL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC6(
	ipc_port_t	port)
{
	ipc_port_request_t requests = port->ip_requests;

	FUNC3(!FUNC4(port));
	if (requests != IPR_NULL) {
		ipc_table_size_t its = requests->ipr_size;
		ipc_table_elems_t size = its->its_size;
		ipc_port_request_index_t index;
		for (index = 1; index < size; index++) {
			ipc_port_request_t ipr = &requests[index];
			mach_port_name_t name = ipr->ipr_name;
			ipc_port_t soright = FUNC0(ipr->ipr_soright);

			if (FUNC2(name) && FUNC1(soright)) {
				FUNC5(soright, name);
			}
		}
	}
}