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
struct TYPE_10__ {scalar_t__ ip_srights; } ;

/* Variables and functions */
 TYPE_1__* IP_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

ipc_port_t
FUNC6(
	ipc_port_t	port)
{
	ipc_port_t sright;

	if (!FUNC0(port))
		return port;

	FUNC3(port);
	if (FUNC2(port)) {
		FUNC1(port->ip_srights > 0);

		FUNC4(port);
		port->ip_srights++;
		sright = port;
	} else
		sright = IP_DEAD;
	FUNC5(port);

	return sright;
}