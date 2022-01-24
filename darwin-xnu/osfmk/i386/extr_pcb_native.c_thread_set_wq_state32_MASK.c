#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  esp; int /*<<< orphan*/  esi; int /*<<< orphan*/  edi; int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  ebx; int /*<<< orphan*/  eax; int /*<<< orphan*/  eip; } ;
typedef  TYPE_1__ x86_thread_state32_t ;
struct TYPE_5__ {void* es; void* ds; void* ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  efl; int /*<<< orphan*/  uesp; int /*<<< orphan*/  esi; int /*<<< orphan*/  edi; int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  ebx; int /*<<< orphan*/  eax; int /*<<< orphan*/  eip; scalar_t__ ebp; } ;
typedef  TYPE_2__ x86_saved_state32_t ;
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ thread_state_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY ; 
 int /*<<< orphan*/  EFL_USER_SET ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  USER_CS ; 
 void* USER_DS ; 
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

kern_return_t
FUNC7(thread_t thread, thread_state_t tstate)
{
        x86_thread_state32_t	*state;
        x86_saved_state32_t	*saved_state;
	thread_t curth = FUNC1();
	spl_t			s=0;

	FUNC2(thread, DIRTY);

	saved_state = FUNC0(thread);

	state = (x86_thread_state32_t *)tstate;
	
	if (curth != thread) {
		s = FUNC3();
	        FUNC5(thread);
	}

	saved_state->ebp = 0;
	saved_state->eip = state->eip;
	saved_state->eax = state->eax;
	saved_state->ebx = state->ebx;
	saved_state->ecx = state->ecx;
	saved_state->edx = state->edx;
	saved_state->edi = state->edi;
	saved_state->esi = state->esi;
	saved_state->uesp = state->esp;
	saved_state->efl = EFL_USER_SET;

	saved_state->cs = USER_CS;
	saved_state->ss = USER_DS;
	saved_state->ds = USER_DS;
	saved_state->es = USER_DS;

	if (curth != thread) {
	        FUNC6(thread);
		FUNC4(s);
	}

	return KERN_SUCCESS;
}