#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct workqueue {int /*<<< orphan*/  wq_nthreads; int /*<<< orphan*/  wq_thnewlist; int /*<<< orphan*/  wq_thidlecount; int /*<<< orphan*/  wq_creations; } ;
struct uthread {int /*<<< orphan*/  uu_workq_stackaddr; } ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_7__ {scalar_t__ (* workq_create_threadstack ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* workq_destroy_threadstack ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uthread*,int /*<<< orphan*/ ) ; 
 int TRACE_wq_thread_create ; 
 int TRACE_wq_thread_create_failed ; 
 int /*<<< orphan*/  FUNC1 (int,struct workqueue*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uthread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* pthread_functions ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uu_workq_entry ; 
 int /*<<< orphan*/  FUNC7 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct workqueue*) ; 
 int /*<<< orphan*/  workq_unpark_continue ; 

__attribute__((used)) static bool
FUNC9(proc_t p, struct workqueue *wq)
{
	mach_vm_offset_t th_stackaddr;
	kern_return_t kret;
	thread_t th;

	wq->wq_nthreads++;

	FUNC8(wq);

	vm_map_t vmap = FUNC3(p->task);

	kret = pthread_functions->workq_create_threadstack(p, vmap, &th_stackaddr);
	if (kret != KERN_SUCCESS) {
		FUNC1(TRACE_wq_thread_create_failed | DBG_FUNC_NONE, wq,
				kret, 1, 0, 0);
		goto out;
	}

	kret = FUNC6(p->task, workq_unpark_continue, &th);
	if (kret != KERN_SUCCESS) {
		FUNC1(TRACE_wq_thread_create_failed | DBG_FUNC_NONE, wq,
				kret, 0, 0, 0);
		pthread_functions->workq_destroy_threadstack(p, vmap, th_stackaddr);
		goto out;
	}

	// thread_create_workq_waiting() will return with the wq lock held
	// on success, because it calls workq_thread_init_and_wq_lock() above

	struct uthread *uth = FUNC2(th);

	wq->wq_creations++;
	wq->wq_thidlecount++;
	uth->uu_workq_stackaddr = th_stackaddr;
	FUNC0(&wq->wq_thnewlist, uth, uu_workq_entry);

	FUNC1(TRACE_wq_thread_create | DBG_FUNC_NONE, wq, 0, 0, 0, 0);
	return true;

out:
	FUNC7(wq);
	/*
	 * Do not redrive here if we went under wq_max_threads again,
	 * it is the responsibility of the callers of this function
	 * to do so when it fails.
	 */
	wq->wq_nthreads--;
	return false;
}