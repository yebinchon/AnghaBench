#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* dst; TYPE_2__* src; int /*<<< orphan*/ * response; } ;
typedef  TYPE_5__ network_socket ;
struct TYPE_15__ {TYPE_5__* sock; } ;
typedef  TYPE_6__ network_connection_pool_entry ;
typedef  int /*<<< orphan*/  network_connection_pool ;
struct TYPE_13__ {TYPE_3__* name; } ;
struct TYPE_12__ {int /*<<< orphan*/  str; } ;
struct TYPE_11__ {TYPE_1__* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 

void FUNC3(network_connection_pool *pool, network_connection_pool_entry *entry) {
	network_socket *sock = entry->sock;

	if (sock->response == NULL) {
		FUNC0("%s: (remove) remove socket from pool, response is NULL, src is %s, dst is %s", G_STRLOC, sock->src->name->str, sock->dst->name->str);
	}

	FUNC2(entry, TRUE);

	FUNC1(pool, entry);
}