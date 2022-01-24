#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {void* efl; void* gs; void* fs; void* es; void* ds; void* ss; int /*<<< orphan*/  cs; } ;
struct TYPE_15__ {void* rflags; void* ss; int /*<<< orphan*/  cs; } ;
struct TYPE_16__ {TYPE_2__ isf; void* gs; void* fs; } ;
struct TYPE_18__ {TYPE_4__ ss_32; int /*<<< orphan*/  flavor; TYPE_3__ ss_64; } ;
typedef  TYPE_5__ x86_saved_state_t ;
typedef  TYPE_6__* thread_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  TYPE_7__* pcb_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_13__ {int access; } ;
struct TYPE_20__ {TYPE_10__ cthread_desc; scalar_t__ thread_gpu_ns; scalar_t__ uldt_selector; scalar_t__ cthread_self; int /*<<< orphan*/  lock; TYPE_5__* iss; } ;
struct TYPE_14__ {scalar_t__ physwindow_busy; scalar_t__ physwindow_pte; } ;
struct TYPE_19__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int ACC_P ; 
 void* EFL_USER_SET ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 TYPE_7__* FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  USER64_CS ; 
 int /*<<< orphan*/  USER_CS ; 
 void* USER_DS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_10__* FUNC3 (void*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  iss_zone ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x86_SAVED_STATE32 ; 
 int /*<<< orphan*/  x86_SAVED_STATE64 ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC10(
	thread_t		thread,
	task_t			task)
{
        pcb_t			pcb = FUNC0(thread);

#if NCOPY_WINDOWS > 0
	inval_copy_windows(thread);

	thread->machine.physwindow_pte = 0;
	thread->machine.physwindow_busy = 0;
#endif

	/*
	 * Allocate save frame only if required.
	 */
	if (pcb->iss == NULL) {
		FUNC1((FUNC4() == 0));
		pcb->iss = (x86_saved_state_t *) FUNC9(iss_zone);
		if (pcb->iss == NULL)
			FUNC6("iss_zone");
	}

	/*
	 * Ensure that the synthesized 32-bit state including
	 * the 64-bit interrupt state can be acommodated in the 
	 * 64-bit state we allocate for both 32-bit and 64-bit threads.
	 */
	FUNC1(sizeof(pcb->iss->ss_32) + sizeof(pcb->iss->ss_64.isf) <=
	       sizeof(pcb->iss->ss_64));

	FUNC2((char *)pcb->iss, sizeof(x86_saved_state_t));

        if (FUNC8(task)) {
		pcb->iss->flavor = x86_SAVED_STATE64;

		pcb->iss->ss_64.isf.cs = USER64_CS;
		pcb->iss->ss_64.isf.ss = USER_DS;
		pcb->iss->ss_64.fs = USER_DS;
		pcb->iss->ss_64.gs = USER_DS;
		pcb->iss->ss_64.isf.rflags = EFL_USER_SET;
	} else {
		pcb->iss->flavor = x86_SAVED_STATE32;

		pcb->iss->ss_32.cs = USER_CS;
		pcb->iss->ss_32.ss = USER_DS;
		pcb->iss->ss_32.ds = USER_DS;
		pcb->iss->ss_32.es = USER_DS;
		pcb->iss->ss_32.fs = USER_DS;
		pcb->iss->ss_32.gs = USER_DS;
		pcb->iss->ss_32.efl = EFL_USER_SET;
	}

	FUNC7(&pcb->lock, 0);

	pcb->cthread_self = 0;
	pcb->uldt_selector = 0;
	pcb->thread_gpu_ns = 0;
	/* Ensure that the "cthread" descriptor describes a valid
	 * segment.
	 */
	if ((pcb->cthread_desc.access & ACC_P) == 0) {
		pcb->cthread_desc = *FUNC3(USER_DS);
	}

	return(KERN_SUCCESS);
}