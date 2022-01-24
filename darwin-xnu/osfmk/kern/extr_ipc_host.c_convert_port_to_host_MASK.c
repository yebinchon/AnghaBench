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
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ host_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ HOST_NULL ; 
 scalar_t__ IKOT_HOST ; 
 scalar_t__ IKOT_HOST_PRIV ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

host_t
FUNC4(
	ipc_port_t	port)
{
	host_t host = HOST_NULL;

	if (FUNC0(port)) {
		if (FUNC3(port) == IKOT_HOST ||
		    FUNC3(port) == IKOT_HOST_PRIV) {
			host = (host_t) port->ip_kobject;
			FUNC1(FUNC2(port));
		}
	}
	return host;
}