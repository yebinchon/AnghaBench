#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proto_input_entry {scalar_t__ protocol; TYPE_1__* domain; int /*<<< orphan*/  (* input ) (scalar_t__,int /*<<< orphan*/ *) ;scalar_t__ chain; struct proto_input_entry* next; } ;
typedef  scalar_t__ protocol_family_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int errno_t ;
struct TYPE_2__ {int dom_flags; int /*<<< orphan*/  dom_mtx; } ;

/* Variables and functions */
 int DOM_REENTRANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct proto_input_entry** proto_hash ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

errno_t
FUNC7(protocol_family_t protocol, mbuf_t packet_list)
{
	struct proto_input_entry *entry;
	errno_t locked = 0, result = 0;

	for (entry = proto_hash[FUNC4(protocol)]; entry != NULL;
	    entry = entry->next) {
		if (entry->protocol == protocol)
			break;
	}

	if (entry == NULL)
		return (-1);

	if (entry->domain && !(entry->domain->dom_flags & DOM_REENTRANT)) {
		FUNC0(entry->domain->dom_mtx);
		locked = 1;
	}

	if (entry->chain) {
		entry->input(entry->protocol, packet_list);
	} else {
		mbuf_t	packet;

		for (packet = packet_list; packet != NULL;
		    packet = packet_list) {
			packet_list = FUNC2(packet);
			FUNC3(packet, NULL);
			entry->input(entry->protocol, packet);
		}
	}

	if (locked) {
		FUNC1(entry->domain->dom_mtx);
	}
	return (result);
}