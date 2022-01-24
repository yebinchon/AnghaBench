#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* upl_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_12__ {scalar_t__ ip_kobject; } ;
struct TYPE_11__ {int ref_count; } ;

/* Variables and functions */
 scalar_t__ IKOT_UPL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

upl_t
FUNC6(
	ipc_port_t	port)
{
	upl_t upl;

	FUNC2(port);
	if (!FUNC0(port) || (FUNC1(port) != IKOT_UPL)) {
			FUNC3(port);
			return (upl_t)NULL;
	}
	upl = (upl_t) port->ip_kobject;
	FUNC3(port);
	FUNC4(upl);
	upl->ref_count+=1;
	FUNC5(upl);
	return upl;
}