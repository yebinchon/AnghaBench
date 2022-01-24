#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mca_addr; } ;
typedef  TYPE_1__ mcache_audit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ MCACHE_FREE_PATTERN ; 
 int /*<<< orphan*/  embutl ; 
 int /*<<< orphan*/  mbutl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  mclverify ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *next, mcache_audit_t *mca)
{
	if (next != NULL && !FUNC0(next) &&
	    (next != (void *)MCACHE_FREE_PATTERN || !mclverify)) {
		FUNC2("mcl_audit: buffer %p modified after free at offset 0: "
		    "%p out of range [%p-%p)\n%s\n",
		    mca->mca_addr, next, mbutl, embutl, FUNC1(mca));
		/* NOTREACHED */
	}
}