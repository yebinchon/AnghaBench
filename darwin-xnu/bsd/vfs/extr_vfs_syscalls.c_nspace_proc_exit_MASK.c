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
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_7__ {struct proc* handler_proc; scalar_t__ handler_tid; } ;
struct TYPE_6__ {int flags; TYPE_1__* vp; scalar_t__ token; scalar_t__ vid; } ;
struct TYPE_5__ {int v_flag; } ;

/* Variables and functions */
 int MAX_NSPACE_ITEMS ; 
 int NSPACE_HANDLER_COUNT ; 
 int NSPACE_ITEM_DONE ; 
 int NSPACE_ITEM_NEW ; 
 int NSPACE_ITEM_PROCESSING ; 
 int NSPACE_ITEM_SNAPSHOT_EVENT ; 
 int VNEEDSSNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nspace_handler_lock ; 
 TYPE_4__* nspace_handlers ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  nspace_item_idx ; 
 TYPE_3__* nspace_items ; 
 scalar_t__ snapshot_timestamp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct proc *p)
{
	int i, event_mask = 0;

	for (i = 0; i < NSPACE_HANDLER_COUNT; i++) {
		if (p == nspace_handlers[i].handler_proc) {
			event_mask |= FUNC2(i);
			nspace_handlers[i].handler_tid = 0;
			nspace_handlers[i].handler_proc = NULL;
		}
	}

	if (event_mask == 0) {
		return;
	}

	FUNC0(&nspace_handler_lock);
	if (event_mask & NSPACE_ITEM_SNAPSHOT_EVENT) {
		// if this process was the snapshot handler, zero snapshot_timeout
		snapshot_timestamp = 0;
	}

	//
	// unblock anyone that's waiting for the handler that died
	//
	for(i=0; i < MAX_NSPACE_ITEMS; i++) {
		if (nspace_items[i].flags & (NSPACE_ITEM_NEW | NSPACE_ITEM_PROCESSING)) {

			if ( nspace_items[i].flags & event_mask ) {

				if (nspace_items[i].vp && (nspace_items[i].vp->v_flag & VNEEDSSNAPSHOT)) {
					FUNC3(nspace_items[i].vp);
					nspace_items[i].vp->v_flag &= ~VNEEDSSNAPSHOT;
					FUNC4(nspace_items[i].vp);
				}
				nspace_items[i].vp = NULL;
				nspace_items[i].vid = 0;
				nspace_items[i].flags = NSPACE_ITEM_DONE;
				nspace_items[i].token = 0;

				FUNC5((caddr_t)&(nspace_items[i].vp));
			}
		}
	}

	FUNC5((caddr_t)&nspace_item_idx);
	FUNC1(&nspace_handler_lock);
}