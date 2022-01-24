#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int state; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ wd_cntrl ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  lwp_queue ;

/* Variables and functions */
#define  LWP_WD_ACTIVE 131 
#define  LWP_WD_INACTIVE 130 
#define  LWP_WD_INSERTED 129 
#define  LWP_WD_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  _wd_sync_count ; 
 int /*<<< orphan*/  _wd_sync_level ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 

u32 FUNC9(lwp_queue *header,wd_cntrl *wd)
{
	u32 level;
	u32 prev_state;
	wd_cntrl *next;
#ifdef _LWPWD_DEBUG
	printf("__lwp_wd_remove(%p)\n",wd);
#endif
	FUNC0(level);
	prev_state = wd->state;
	switch(prev_state) {
		case LWP_WD_INACTIVE:
			break;
		case  LWP_WD_INSERTED:
			wd->state = LWP_WD_INACTIVE;
			break;
		case LWP_WD_ACTIVE:
		case LWP_WD_REMOVE:
			wd->state = LWP_WD_INACTIVE;
			next = FUNC6(wd);
			if(_wd_sync_count) _wd_sync_level = FUNC2();
			FUNC3(&wd->node);
			if(!FUNC4(header) && FUNC5(header)==next) FUNC7(next);
			break;
	}
	FUNC1(level);
	return prev_state;
}