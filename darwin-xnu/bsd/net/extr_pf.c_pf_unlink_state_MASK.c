#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ state; scalar_t__ seqlo; int /*<<< orphan*/  seqhi; } ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
struct pf_state {scalar_t__ creatorid; int /*<<< orphan*/  timeout; int /*<<< orphan*/  unlink_hooks; int /*<<< orphan*/  tag; TYPE_7__ src; TYPE_6__* state_key; TYPE_1__ rule; } ;
struct TYPE_16__ {scalar_t__ hostid; } ;
struct TYPE_12__ {int /*<<< orphan*/  port; } ;
struct TYPE_13__ {TYPE_4__ xport; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  port; } ;
struct TYPE_11__ {TYPE_2__ xport; int /*<<< orphan*/  addr; } ;
struct TYPE_14__ {TYPE_5__ lan; TYPE_3__ ext_lan; int /*<<< orphan*/  af_lan; } ;

/* Variables and functions */
 int HOOK_FREE ; 
 int HOOK_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PFTM_UNLINKED ; 
 scalar_t__ PF_TCPS_PROXY_DST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_state*) ; 
 int TH_ACK ; 
 int TH_RST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pf_state*) ; 
 int /*<<< orphan*/  pf_state_tree_id ; 
 TYPE_8__ pf_status ; 
 int /*<<< orphan*/  FUNC6 (struct pf_state*) ; 
 int /*<<< orphan*/  tree_id ; 

void
FUNC7(struct pf_state *cur)
{
	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	if (cur->src.state == PF_TCPS_PROXY_DST) {
		FUNC4(cur->rule.ptr, cur->state_key->af_lan,
		    &cur->state_key->ext_lan.addr, &cur->state_key->lan.addr,
		    cur->state_key->ext_lan.xport.port,
		    cur->state_key->lan.xport.port,
		    cur->src.seqhi, cur->src.seqlo + 1,
		    TH_RST|TH_ACK, 0, 0, 0, 1, cur->tag, NULL, NULL);
	}

	FUNC2(&cur->unlink_hooks, HOOK_REMOVE|HOOK_FREE);
	FUNC1(pf_state_tree_id, &tree_id, cur);
#if NPFSYNC
	if (cur->creatorid == pf_status.hostid)
		pfsync_delete_state(cur);
#endif
	cur->timeout = PFTM_UNLINKED;
	FUNC5(cur);
	FUNC3(cur, 0);
}