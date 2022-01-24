#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_11__ {scalar_t__ first; } ;
typedef  TYPE_3__ lwp_queue ;
struct TYPE_9__ {scalar_t__ next; } ;
struct TYPE_10__ {TYPE_1__ node; } ;
struct TYPE_12__ {TYPE_2__ object; } ;
typedef  TYPE_4__ lwp_cntrl ;

/* Variables and functions */
 size_t LWP_MAXPRIORITIES ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_3__* _lwp_thr_ready ; 
 TYPE_4__* _thr_executing ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5()
{
	u32 i,level;
	lwp_queue *header;
	lwp_cntrl *ptr,*next;
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_closeall(enter)\n");
#endif
	FUNC0(level);
	for(i=0;i<LWP_MAXPRIORITIES;i++) {
		header = &_lwp_thr_ready[i];
		ptr = (lwp_cntrl*)header->first;
		while(ptr!=(lwp_cntrl*)FUNC2(&_lwp_thr_ready[i])) {
			next = (lwp_cntrl*)ptr->object.node.next;
			if(ptr!=_thr_executing)
				FUNC3(ptr);

			ptr = next;
		}
	}
	FUNC1(level);
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_closeall(leave)\n");
#endif
}