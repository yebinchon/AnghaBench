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
typedef  int /*<<< orphan*/  ipc_voucher_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_6__ {int /*<<< orphan*/  ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_VOUCHER ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IV_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ipc_voucher_t
FUNC5(
	ipc_port_t	port)
{
	if (FUNC0(port)) {
		ipc_voucher_t voucher = (ipc_voucher_t) port->ip_kobject;

		/*
		 * No need to lock because we have a reference on the
		 * port, and if it is a true voucher port, that reference
		 * keeps the voucher bound to the port (and active).
		 */
		if (FUNC3(port) != IKOT_VOUCHER)
			return IV_NULL;

		FUNC1(FUNC2(port));

		FUNC4(voucher);
		return (voucher);
	}
	return IV_NULL;
}