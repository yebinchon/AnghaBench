#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int64_t ;
struct TYPE_4__ {intptr_t mc_chunksize; int /*<<< orphan*/  mc_align; int /*<<< orphan*/  mc_bufsize; } ;
typedef  TYPE_1__ mcache_t ;
struct TYPE_5__ {struct TYPE_5__* obj_next; } ;
typedef  TYPE_2__ mcache_obj_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCACHE_FREE_PATTERN ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static void
FUNC5(void *arg, mcache_obj_t *list, boolean_t alloc)
{
	mcache_t *cp = arg;
	size_t rsize = FUNC1(cp->mc_bufsize, sizeof (u_int64_t));
	void *base, **pbuf;

	while (list != NULL) {
		mcache_obj_t *next = list->obj_next;

		base = list;
		FUNC2(FUNC0(base, cp->mc_align));

		/* Get the original address */
		pbuf = (void **)((intptr_t)base - sizeof (void *));

		FUNC2(((intptr_t)base + rsize) <=
		    ((intptr_t)*pbuf + cp->mc_chunksize));

		if (!alloc)
			FUNC4(MCACHE_FREE_PATTERN, base, rsize);
		else
			FUNC3(NULL, base, 0, rsize);

		list = list->obj_next = next;
	}
}