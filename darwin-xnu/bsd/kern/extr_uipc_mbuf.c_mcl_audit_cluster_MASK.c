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
struct TYPE_3__ {struct TYPE_3__* obj_next; } ;
typedef  TYPE_1__ mcache_obj_t ;
typedef  int /*<<< orphan*/  mcache_audit_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCACHE_FREE_PATTERN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ mclverify ; 

__attribute__((used)) static void
FUNC3(mcache_audit_t *mca, void *addr, size_t size, boolean_t alloc,
    boolean_t save_next)
{
	mcache_obj_t *next = ((mcache_obj_t *)addr)->obj_next;

	if (!alloc) {
		if (mclverify) {
			FUNC1(MCACHE_FREE_PATTERN, addr, size);
		}
		if (save_next) {
			FUNC2(next, mca);
			((mcache_obj_t *)addr)->obj_next = next;
		}
	} else if (mclverify) {
		/* Check if the buffer has been corrupted while in freelist */
		FUNC2(next, mca);
		FUNC0(mca, addr, 0, size);
	}
}