#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  backends_mutex; TYPE_4__* backends; } ;
typedef  TYPE_1__ network_backends_t ;
struct TYPE_6__ {scalar_t__ uuid; scalar_t__ addr; } ;
typedef  TYPE_2__ network_backend_t ;
typedef  size_t guint ;
struct TYPE_7__ {TYPE_2__** pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(network_backends_t *bs, guint index) {
	network_backend_t* b = bs->backends->pdata[index];
	if (b != NULL) {
		if (b->addr) FUNC4(b->addr);
		if (b->uuid) FUNC3(b->uuid, TRUE);
		FUNC0(bs->backends_mutex);
		FUNC2(bs->backends, index);
		FUNC1(bs->backends_mutex);
	}
	return 0;
}