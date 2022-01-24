#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t xstate_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct x86_fx_thread_state {int /*<<< orphan*/  fp_valid; int /*<<< orphan*/  fp_save_layout; } ;
typedef  TYPE_1__* pcb_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {size_t xstate; struct x86_fx_thread_state* ifps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FXSAVE32 ; 
 int /*<<< orphan*/  FXSAVE64 ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XSAVE32 ; 
 int /*<<< orphan*/  XSAVE64 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct x86_fx_thread_state* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct x86_fx_thread_state*,size_t) ; 
 int /*<<< orphan*/ * fp_state_size ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ fpu_YMM_capable ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  initial_fp_state ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x86_isr_fp_simd_use ; 

void
FUNC14(void)
{
	boolean_t	intr;
	thread_t	thr_act;
	pcb_t		pcb;
	struct x86_fx_thread_state *ifps = 0;
	xstate_t	xstate = FUNC5();

	thr_act = FUNC4();
	pcb = FUNC0(thr_act);

	if (pcb->ifps == 0 && !FUNC11()) {
	        ifps = FUNC8(xstate);
		FUNC2((char *)&initial_fp_state, (char *)ifps,
		    fp_state_size[xstate]);
		if (!FUNC13(thr_act)) {
			ifps->fp_save_layout = fpu_YMM_capable ? XSAVE32 : FXSAVE32;
		}
		else
			ifps->fp_save_layout = fpu_YMM_capable ? XSAVE64 : FXSAVE64;
		ifps->fp_valid = TRUE;
	}
	intr = FUNC12(FALSE);

	FUNC3();			/*  Enable FPU use */

	if (FUNC1(FUNC11())) {
		/* Track number of #DNA traps at interrupt context,
		 * which is likely suboptimal. Racy, but good enough.
		 */
		x86_isr_fp_simd_use++;
		/*
		 * Save current FP/SIMD context if valid
		 * Initialize live FP/SIMD registers
		 */
		if (pcb->ifps) {
			FUNC7(thr_act);
		}
		FUNC10();
	} else {
	        if (pcb->ifps == 0) {
		        pcb->ifps = ifps;
		        pcb->xstate = xstate;
			ifps = 0;
		}
		/*
		 * Load this thread`s state into coprocessor live context.
		 */
		FUNC6(thr_act);
	}
	(void)FUNC12(intr);

	if (ifps)
	        FUNC9(ifps, xstate);
}