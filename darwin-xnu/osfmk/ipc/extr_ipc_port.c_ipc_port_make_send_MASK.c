#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_10__ {int /*<<< orphan*/  ip_srights; int /*<<< orphan*/  ip_mscount; } ;

/* Variables and functions */
 TYPE_1__* IP_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

ipc_port_t
FUNC5(
	ipc_port_t	port)
{
	
	if (!FUNC0(port))
		return port;

	FUNC2(port);
	if (FUNC1(port)) {
		port->ip_mscount++;
		port->ip_srights++;
		FUNC3(port);
		FUNC4(port);
		return port;
	}
	FUNC4(port);
	return IP_DEAD;
}