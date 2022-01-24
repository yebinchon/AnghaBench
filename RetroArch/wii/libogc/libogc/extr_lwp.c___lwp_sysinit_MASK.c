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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  tqueue_st ;
struct TYPE_8__ {int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_MAX_THREADS ; 
 int /*<<< orphan*/  LWP_MAX_TQUEUES ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ __crtmain ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ __stack_addr ; 
 int /*<<< orphan*/ * __stack_end ; 
 int /*<<< orphan*/  _lwp_thr_objects ; 
 int /*<<< orphan*/  _lwp_tqueue_objects ; 
 TYPE_1__* _thr_executing ; 
 TYPE_1__* _thr_heir ; 
 TYPE_1__* _thr_idle ; 
 TYPE_1__* _thr_main ; 
 void* idle_func ; 

void FUNC5()
{
	FUNC1(&_lwp_thr_objects,LWP_MAX_THREADS,sizeof(lwp_cntrl));
	FUNC1(&_lwp_tqueue_objects,LWP_MAX_TQUEUES,sizeof(tqueue_st));

	// create idle thread, is needed iff all threads are locked on a queue
	_thr_idle = (lwp_cntrl*)FUNC0(&_lwp_thr_objects);
	FUNC3(_thr_idle,NULL,0,255,0,TRUE);
	_thr_executing = _thr_heir = _thr_idle;
	FUNC4(_thr_idle,idle_func,NULL);
	FUNC2(&_lwp_thr_objects,&_thr_idle->object);

	// create main thread, as this is our entry point
	// for every GC application.
	_thr_main = (lwp_cntrl*)FUNC0(&_lwp_thr_objects);
	FUNC3(_thr_main,__stack_end,((u32)__stack_addr-(u32)__stack_end),191,0,TRUE);
	FUNC4(_thr_main,(void*)__crtmain,NULL);
	FUNC2(&_lwp_thr_objects,&_thr_main->object);
}