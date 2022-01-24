#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ network_socket ;
struct TYPE_10__ {TYPE_1__* sock; } ;
typedef  TYPE_2__ network_connection_pool_entry ;
struct TYPE_11__ {scalar_t__ length; } ;
typedef  TYPE_3__ network_connection_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

network_socket *FUNC3(network_connection_pool *pool) {
	network_connection_pool_entry *entry = NULL;

	if (pool->length > 0) {
	//	entry = g_queue_pop_head(pool);
		entry = FUNC1(pool);
	}

	/**
	 * if we know this use, return a authed connection 
	 */

	if (!entry) return NULL;

	network_socket *sock = entry->sock;

	FUNC2(entry, FALSE);

	/* remove the idle handler from the socket */	
	FUNC0(&(sock->event));
		
	return sock;
}