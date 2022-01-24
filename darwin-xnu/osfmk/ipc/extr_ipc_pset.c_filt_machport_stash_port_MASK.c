#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct turnstile {int dummy; } ;
struct knote {scalar_t__* kn_ext; scalar_t__ kn_hook; } ;
typedef  scalar_t__ ipc_port_t ;

/* Variables and functions */
 int PORT_SYNC_LINK_NO_LINKAGE ; 
 int PORT_SYNC_LINK_WORKLOOP_KNOTE ; 
 int PORT_SYNC_LINK_WORKLOOP_STASH ; 
 struct turnstile* FUNC0 (struct knote*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

struct turnstile *
FUNC2(struct knote *kn, ipc_port_t port, int *link)
{
	struct turnstile *ts = FUNC0(kn);

	if (!ts) {
		if (link) *link = PORT_SYNC_LINK_NO_LINKAGE;
	} else if (kn->kn_ext[3] == 0) {
		FUNC1(port);
		kn->kn_ext[3] = (uintptr_t)port;
		if (link) *link = PORT_SYNC_LINK_WORKLOOP_KNOTE;
	} else {
		ts = (struct turnstile *)kn->kn_hook;
		if (link) *link = PORT_SYNC_LINK_WORKLOOP_STASH;
	}

	return ts;
}