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
struct pool {unsigned int pool_hiwat; unsigned int pool_limit; char const* pool_name; int /*<<< orphan*/ * pool_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_EXPAND ; 
 int /*<<< orphan*/  FUNC0 (struct pool*,int) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct pool *pp, size_t size, unsigned int align, unsigned int ioff,
    int flags, const char *wchan, void *palloc)
{
#pragma unused(align, ioff, flags, palloc)
	FUNC0(pp, sizeof (*pp));
	pp->pool_zone = FUNC1(size, 1024 * size, PAGE_SIZE, wchan);
	if (pp->pool_zone != NULL) {
		FUNC2(pp->pool_zone, Z_EXPAND, TRUE);
		FUNC2(pp->pool_zone, Z_CALLERACCT, FALSE);
		pp->pool_hiwat = pp->pool_limit = (unsigned int)-1;
		pp->pool_name = wchan;
	}
}