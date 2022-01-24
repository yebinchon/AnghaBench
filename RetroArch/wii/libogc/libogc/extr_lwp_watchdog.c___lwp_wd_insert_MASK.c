#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  prev; } ;
struct TYPE_10__ {scalar_t__ fire; scalar_t__ state; TYPE_9__ node; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ wd_cntrl ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  lwp_queue ;

/* Variables and functions */
 scalar_t__ LWP_WD_INSERTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  _wd_sync_count ; 
 scalar_t__ _wd_sync_level ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC10(lwp_queue *header,wd_cntrl *wd)
{
	u32 level;
	u64 fire;
	u32 isr_nest_level;
	wd_cntrl *after;
#ifdef _LWPWD_DEBUG
	printf("__lwp_wd_insert(%p,%llu,%llu)\n",wd,wd->start,wd->fire);
#endif
	isr_nest_level = FUNC3();
	wd->state = LWP_WD_INSERTED;

	_wd_sync_count++;
restart:
	FUNC0(level);
	fire = wd->fire;
	for(after=FUNC6(header);;after=FUNC7(after)) {
		if(fire==0 || !FUNC7(after)) break;
		if(fire<after->fire) break;

		FUNC1(level);
		if(wd->state!=LWP_WD_INSERTED) goto exit_insert;
		if(_wd_sync_level>isr_nest_level) {
			_wd_sync_level = isr_nest_level;
			FUNC2(level);
			goto restart;
		}
	}
	FUNC5(wd);
	wd->fire = fire;
	FUNC4(after->node.prev,&wd->node);
	if(FUNC6(header)==wd) FUNC8(wd);

exit_insert:
	_wd_sync_level = isr_nest_level;
	_wd_sync_count--;
	FUNC2(level);
	return;
}