#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* ipc_pset_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_messages; } ;
struct TYPE_7__ {int /*<<< orphan*/  ips_messages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

kern_return_t
FUNC4(
	ipc_pset_t	  pset,
	ipc_port_t	  port,
	uint64_t	 *reserved_link,
	uint64_t	 *reserved_prepost)
{
	kern_return_t kr;

	FUNC0(FUNC3(pset));
	FUNC0(FUNC1(port));

	kr = FUNC2(&port->ip_messages, &pset->ips_messages,
			    reserved_link, reserved_prepost);

	return kr;
}