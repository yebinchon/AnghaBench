#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct workqueue {scalar_t__ wq_constrained_threads_scheduled; scalar_t__ wq_nthreads; } ;
typedef  void* proc_t ;

/* Variables and functions */
 int WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT ; 
 int WQ_EXCEEDED_TOTAL_THREAD_LIMIT ; 
 int WQ_FLAGS_AVAILABLE ; 
 int kTaskWqExceededConstrainedThreadLimit ; 
 int kTaskWqExceededTotalThreadLimit ; 
 int kTaskWqFlagsAvailable ; 
 struct workqueue* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct workqueue*) ; 
 scalar_t__ wq_max_constrained_threads ; 
 scalar_t__ wq_max_threads ; 

uint32_t
FUNC3(void * v)
{
	FUNC1((WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT << 17) ==
			kTaskWqExceededConstrainedThreadLimit);
	FUNC1((WQ_EXCEEDED_TOTAL_THREAD_LIMIT << 17) ==
			kTaskWqExceededTotalThreadLimit);
	FUNC1((WQ_FLAGS_AVAILABLE << 17) == kTaskWqFlagsAvailable);
	FUNC1((WQ_FLAGS_AVAILABLE | WQ_EXCEEDED_TOTAL_THREAD_LIMIT |
				WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT) == 0x7);

	if (v == NULL) {
		return 0;
	}

	proc_t p = v;
	struct workqueue *wq = FUNC0(p);

	if (wq == NULL || FUNC2(wq)) {
		return 0;
	}

	uint32_t pwq_state = WQ_FLAGS_AVAILABLE;

	if (wq->wq_constrained_threads_scheduled >= wq_max_constrained_threads) {
		pwq_state |= WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT;
	}

	if (wq->wq_nthreads >= wq_max_threads) {
		pwq_state |= WQ_EXCEEDED_TOTAL_THREAD_LIMIT;
	}

	return pwq_state;
}