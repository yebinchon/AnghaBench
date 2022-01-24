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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int s32 ;
typedef  scalar_t__ lwp_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ object; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWP_OBJTYPE_THREAD ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*,void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,void* (*) (void*),void*) ; 

s32 FUNC8(lwp_t *thethread,void* (*entry)(void *),void *arg,void *stackbase,u32 stack_size,u8 prio)
{
	u32 status;
	lwp_cntrl *lwp_thread;

	if(!thethread || !entry) return -1;

	lwp_thread = FUNC2();
	if(!lwp_thread) return -1;

	status = FUNC6(lwp_thread,stackbase,stack_size,FUNC4(prio),0,TRUE);
	if(!status) {
		FUNC3(lwp_thread);
		FUNC5();
		return -1;
	}

	status = FUNC7(lwp_thread,entry,arg);
	if(!status) {
		FUNC3(lwp_thread);
		FUNC5();
		return -1;
	}

	*thethread = (lwp_t)(FUNC1(LWP_OBJTYPE_THREAD)|FUNC0(lwp_thread->object.id));
	FUNC5();

	return 0;
}