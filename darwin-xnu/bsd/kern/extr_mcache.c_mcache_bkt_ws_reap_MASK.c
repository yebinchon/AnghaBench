#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  bl_min; int /*<<< orphan*/  bl_reaplimit; } ;
struct TYPE_9__ {TYPE_7__ mc_empty; TYPE_7__ mc_full; } ;
typedef  TYPE_1__ mcache_t ;
struct TYPE_10__ {int /*<<< orphan*/  bt_bktsize; } ;
typedef  TYPE_2__ mcache_bkttype_t ;
typedef  int /*<<< orphan*/  mcache_bkt_t ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,TYPE_7__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(mcache_t *cp)
{
	long reap;
	mcache_bkt_t *bkt;
	mcache_bkttype_t *btp;

	reap = FUNC0(cp->mc_full.bl_reaplimit, cp->mc_full.bl_min);
	while (reap-- &&
	    (bkt = FUNC1(cp, &cp->mc_full, &btp)) != NULL)
		FUNC2(cp, btp, bkt, btp->bt_bktsize);

	reap = FUNC0(cp->mc_empty.bl_reaplimit, cp->mc_empty.bl_min);
	while (reap-- &&
	    (bkt = FUNC1(cp, &cp->mc_empty, &btp)) != NULL)
		FUNC2(cp, btp, bkt, 0);
}