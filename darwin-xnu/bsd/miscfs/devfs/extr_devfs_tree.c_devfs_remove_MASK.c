#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct devfs_vnode_event {int dummy; } ;
struct devfs_event_log {int dummy; } ;
struct TYPE_6__ {int dn_links; TYPE_5__* dn_linklist; struct TYPE_6__* dn_nextsibling; struct TYPE_6__** dn_prevsiblingp; } ;
typedef  TYPE_1__ devnode_t ;
struct TYPE_7__ {TYPE_1__* de_dnp; } ;
typedef  TYPE_2__ devdirent_t ;
typedef  int boolean_t ;
struct TYPE_8__ {TYPE_1__* de_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NUM_STACK_ENTRIES ; 
 int /*<<< orphan*/  VNODE_EVENT_DELETE ; 
 int /*<<< orphan*/  VNODE_EVENT_FILE_REMOVED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_event_log*) ; 
 scalar_t__ FUNC4 (struct devfs_event_log*,int,struct devfs_vnode_event*) ; 
 int /*<<< orphan*/  devfs_ready ; 
 int /*<<< orphan*/  FUNC5 (struct devfs_event_log*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct devfs_event_log*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (TYPE_1__*) ; 

void
FUNC9(void *dirent_p)
{
	devnode_t * dnp = ((devdirent_t *)dirent_p)->de_dnp;
	devnode_t * dnp2;
	boolean_t   lastlink;
	struct devfs_event_log event_log;
	uint32_t    log_count = 0;
	int	    do_notify = 0;
	int	    need_free = 0;
	struct devfs_vnode_event stackbuf[NUM_STACK_ENTRIES];
	
	FUNC0();

	if (!devfs_ready) {
		FUNC7("devfs_remove: not ready for devices!\n");
		goto out;
	}

	log_count = FUNC8(dnp);

	if (log_count > NUM_STACK_ENTRIES) {
		uint32_t new_count;
wrongsize:
		FUNC1();
		if (FUNC4(&event_log, log_count, NULL) == 0) {
			do_notify = 1;
			need_free = 1;
		} 	
		FUNC0();

		new_count = FUNC8(dnp);
		if (need_free && (new_count > log_count)) {
			FUNC6(&event_log, 1);
			need_free = 0;
			do_notify = 0;
			log_count = log_count * 2;
			goto wrongsize;
		}
	} else {
		if (FUNC4(&event_log, NUM_STACK_ENTRIES, &stackbuf[0]) == 0) {
			do_notify = 1;
		}
	}

	/* This file has been deleted */
	if (do_notify != 0) {
		FUNC5(&event_log, dnp, VNODE_EVENT_DELETE);
	}

	/* keep removing the next sibling till only we exist. */
	while ((dnp2 = dnp->dn_nextsibling) != dnp) {

		/*
		 * Keep removing the next front node till no more exist
		 */
		dnp->dn_nextsibling = dnp2->dn_nextsibling; 
		dnp->dn_nextsibling->dn_prevsiblingp = &(dnp->dn_nextsibling);
		dnp2->dn_nextsibling = dnp2;
		dnp2->dn_prevsiblingp = &(dnp2->dn_nextsibling);
				
		/* This file has been deleted in this plane */
		if (do_notify != 0) {
			FUNC5(&event_log, dnp2, VNODE_EVENT_DELETE);
		}

		if (dnp2->dn_linklist) {
			do {
				lastlink = (1 == dnp2->dn_links);
				/* Each parent of a link to this file has lost a child in this plane */
				if (do_notify != 0) {
					FUNC5(&event_log, dnp2->dn_linklist->de_parent, VNODE_EVENT_FILE_REMOVED);
				}
				FUNC2(dnp2->dn_linklist);
			} while (!lastlink);
		}
	}

	/*
	 * then free the main node
	 * If we are not running in SPLIT_DEVS mode, then
	 * THIS is what gets rid of the propogated nodes.
	 */
	if (dnp->dn_linklist) {
		do {
			lastlink = (1 == dnp->dn_links);
			/* Each parent of a link to this file has lost a child */
			if (do_notify != 0) {
				FUNC5(&event_log, dnp->dn_linklist->de_parent, VNODE_EVENT_FILE_REMOVED);
			}
			FUNC2(dnp->dn_linklist);
		} while (!lastlink);
	}
out:
	FUNC1();
	if (do_notify != 0) {
		FUNC3(&event_log);
		FUNC6(&event_log, need_free);
	}

	return ;
}