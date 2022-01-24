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
typedef  int /*<<< orphan*/  uint32_t ;
struct eventqelt {int ee_flags; int /*<<< orphan*/  ee_eventmask; TYPE_1__* ee_proc; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_evlist; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int DBG_MISC_ENQUEUE ; 
 int EV_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct eventqelt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eventqelt*) ; 
 int /*<<< orphan*/  ee_plist ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct eventqelt *evq)
{
        proc_t	p;

	FUNC2(evq);
	p = evq->ee_proc;

	FUNC0(DBG_MISC_ENQUEUE|DBG_FUNC_START, (uint32_t)evq, evq->ee_flags, evq->ee_eventmask,0,0);

	FUNC3(p);

	if (evq->ee_flags & EV_QUEUED) {
	        FUNC4(p);

	        FUNC0(DBG_MISC_ENQUEUE|DBG_FUNC_END, 0,0,0,0,0);
		return;
	}
	evq->ee_flags |= EV_QUEUED;

	FUNC1(&p->p_evlist, evq, ee_plist);

	FUNC4(p);

	FUNC5(&p->p_evlist);

	FUNC0(DBG_MISC_ENQUEUE|DBG_FUNC_END, 0,0,0,0,0);
}