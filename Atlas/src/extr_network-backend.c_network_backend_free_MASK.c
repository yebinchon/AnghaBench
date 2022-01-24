#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_connection_pool ;
struct TYPE_6__ {scalar_t__ uuid; scalar_t__ addr; TYPE_3__* pools; } ;
typedef  TYPE_1__ network_backend_t ;
typedef  scalar_t__ guint ;
struct TYPE_7__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(network_backend_t *b) {
	if (!b) return;

	guint i;
	for (i = 0; i < b->pools->len; ++i) {
		network_connection_pool* pool = FUNC2(b->pools, i);
		FUNC5(pool);
	}
	FUNC1(b->pools, TRUE);

	if (b->addr)     FUNC4(b->addr);
	if (b->uuid)     FUNC3(b->uuid, TRUE);

	FUNC0(b);
}