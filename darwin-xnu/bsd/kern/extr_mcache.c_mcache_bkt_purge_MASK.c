#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * cache_bkttype; TYPE_2__* mc_cpu; } ;
typedef  TYPE_1__ mcache_t ;
struct TYPE_8__ {int cc_objs; int cc_pobjs; int /*<<< orphan*/  cc_lock; scalar_t__ cc_bktsize; int /*<<< orphan*/ * cc_pfilled; int /*<<< orphan*/ * cc_filled; } ;
typedef  TYPE_2__ mcache_cpu_t ;
typedef  int /*<<< orphan*/  mcache_bkttype_t ;
typedef  int /*<<< orphan*/  mcache_bkt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int ncpu ; 

__attribute__((used)) static void
FUNC5(mcache_t *cp)
{
	mcache_cpu_t *ccp;
	mcache_bkt_t *bp, *pbp;
	mcache_bkttype_t *btp;
	int cpu, objs, pobjs;

	for (cpu = 0; cpu < ncpu; cpu++) {
		ccp = &cp->mc_cpu[cpu];

		FUNC0(&ccp->cc_lock);

		btp = cp->cache_bkttype;
		bp = ccp->cc_filled;
		pbp = ccp->cc_pfilled;
		objs = ccp->cc_objs;
		pobjs = ccp->cc_pobjs;
		ccp->cc_filled = NULL;
		ccp->cc_pfilled = NULL;
		ccp->cc_objs = -1;
		ccp->cc_pobjs = -1;
		ccp->cc_bktsize = 0;

		FUNC1(&ccp->cc_lock);

		if (bp != NULL)
			FUNC2(cp, btp, bp, objs);
		if (pbp != NULL)
			FUNC2(cp, btp, pbp, pobjs);
	}

	FUNC4(cp);
	FUNC3(cp);
}