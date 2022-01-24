#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_5__ {int /*<<< orphan*/  ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_VOUCHER ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IV_NULL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

uintptr_t
FUNC2(
	ipc_port_t	port)
{
	if (FUNC0(port)) {
		uintptr_t voucher = (uintptr_t) port->ip_kobject;

		/*
		 * No need to lock because we have a reference on the
		 * port, and if it is a true voucher port, that reference
		 * keeps the voucher bound to the port (and active).
		 */
		if (FUNC1(port) == IKOT_VOUCHER)
			return (voucher);
	}
	return (uintptr_t)IV_NULL;
}