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
struct pool {scalar_t__ pool_count; scalar_t__ pool_limit; char* pool_name; int /*<<< orphan*/  pool_zone; int /*<<< orphan*/  pool_fails; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PF_DEBUG_NOISY ; 
 int PR_NOWAIT ; 
 int PR_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  pf_lock ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 

void *
FUNC4(struct pool *pp, int flags)
{
	void *buf;

	FUNC1(pf_lock, LCK_MTX_ASSERT_OWNED);

	if (pp->pool_count > pp->pool_limit) {
		FUNC0(PF_DEBUG_NOISY,
		    ("pf: pool %s hard limit reached (%d)\n",
		    pp->pool_name != NULL ? pp->pool_name : "unknown",
		    pp->pool_limit));
		pp->pool_fails++;
		return (NULL);
	}

	buf = FUNC3(pp->pool_zone, (flags & (PR_NOWAIT | PR_WAITOK)));
	if (buf != NULL) {
		pp->pool_count++;
		FUNC2(pp->pool_count != 0);
	}
	return (buf);
}