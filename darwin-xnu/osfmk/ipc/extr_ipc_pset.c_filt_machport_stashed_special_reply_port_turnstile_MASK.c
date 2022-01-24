#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct turnstile {int dummy; } ;
struct knote {scalar_t__* kn_ext; struct turnstile* kn_hook; } ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_3__ {int ip_specialreply; scalar_t__ ip_sync_link_state; struct knote* ip_sync_inheritor_knote; } ;

/* Variables and functions */
 scalar_t__ PORT_SYNC_LINK_WORKLOOP_KNOTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct knote*) ; 
 struct turnstile* FUNC2 (int /*<<< orphan*/ ) ; 

struct turnstile *
FUNC3(ipc_port_t port)
{
	struct knote *kn = port->ip_sync_inheritor_knote;

	FUNC0(port->ip_specialreply);
	FUNC0(port->ip_sync_link_state == PORT_SYNC_LINK_WORKLOOP_KNOTE);
	if (kn->kn_ext[3] == (uint64_t)port) {
		return FUNC2(FUNC1(kn));
	}
	return kn->kn_hook;
}