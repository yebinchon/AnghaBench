#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t xstate_t ;
typedef  TYPE_2__* thread_t ;
struct x86_fx_thread_state {int /*<<< orphan*/  fx_MXCSR; scalar_t__ fp_valid; } ;
typedef  TYPE_3__* pcb_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  lock; struct x86_fx_thread_state* ifps; } ;
struct TYPE_11__ {size_t xstate; struct x86_fx_thread_state* ifps; } ;
struct TYPE_12__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct x86_fx_thread_state* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct x86_fx_thread_state*,size_t) ; 
 int /*<<< orphan*/ * fp_state_size ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxcsr_capability_mask ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (TYPE_2__*) ; 

void
FUNC14(
	thread_t	parent,
	thread_t	child)
{
	struct x86_fx_thread_state *new_ifps = NULL;
	boolean_t	intr;
	pcb_t		ppcb;
	xstate_t	xstate = FUNC13(parent);

	ppcb = FUNC0(parent);

	if (ppcb->ifps == NULL)
	        return;

        if (child->machine.ifps)
	        FUNC10("fpu_dup_fxstate: child's ifps non-null");

	new_ifps = FUNC7(xstate);

	FUNC11(&ppcb->lock);

	if (ppcb->ifps != NULL) {
		struct x86_fx_thread_state *ifps = ppcb->ifps;
	        /*
		 * Make sure we`ve got the latest fp state info
		 */
		if (FUNC5() == parent) {
			intr = FUNC9(FALSE);
			FUNC1(FUNC5() == parent);
			FUNC4();
			FUNC6(parent);
			FUNC3();

			(void)FUNC9(intr);
		}

		if (ifps->fp_valid) {
			child->machine.ifps = new_ifps;
			child->machine.xstate = xstate;
			FUNC2((char *)(ppcb->ifps),
			      (char *)(child->machine.ifps),
			      fp_state_size[xstate]);

			/* Mark the new fp saved state as non-live. */
			/* Temporarily disabled: radar 4647827
			 * new_ifps->fp_valid = TRUE;
			 */

			/*
			 * Clear any reserved bits in the MXCSR to prevent a GPF
			 * when issuing an FXRSTOR.
			 */
			new_ifps->fx_MXCSR &= mxcsr_capability_mask;
			new_ifps = NULL;
		}
	}
	FUNC12(&ppcb->lock);

	if (new_ifps != NULL)
	        FUNC8(new_ifps, xstate);
}