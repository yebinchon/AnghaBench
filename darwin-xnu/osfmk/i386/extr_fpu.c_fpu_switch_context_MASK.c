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
struct x86_fx_thread_state {scalar_t__ fp_valid; } ;
struct TYPE_13__ {size_t cpu_xstate; } ;
typedef  TYPE_3__ cpu_data_t ;
typedef  int boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  iss; struct x86_fx_thread_state* ifps; } ;
struct TYPE_12__ {TYPE_1__ machine; } ;

/* Variables and functions */
 size_t AVX ; 
 size_t AVX512 ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  XCR0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  default_avx512_state ; 
 int /*<<< orphan*/  default_avx_state ; 
 int /*<<< orphan*/  default_fx_state ; 
 scalar_t__ fpu_YMM_capable ; 
 scalar_t__ fpu_ZMM_capable ; 
 size_t fpu_default ; 
 int /*<<< orphan*/  FUNC5 (struct x86_fx_thread_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct x86_fx_thread_state*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 size_t FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct x86_fx_thread_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * xstate_name ; 
 scalar_t__* xstate_xmask ; 

void
FUNC16(thread_t old, thread_t new)
{
	struct x86_fx_thread_state	*ifps;
	cpu_data_t *cdp = FUNC4();
	xstate_t new_xstate = new ? FUNC12(new) : fpu_default;

	FUNC1(FUNC8() == FALSE);
	ifps = (old)->machine.ifps;
#if	DEBUG
	if (ifps && ((ifps->fp_valid != FALSE) && (ifps->fp_valid != TRUE))) {
		panic("ifps->fp_valid: %u\n", ifps->fp_valid);
	}
#endif
	if (ifps != 0 && (ifps->fp_valid == FALSE)) {
		/* Clear CR0.TS in preparation for the FP context save. In
		 * theory, this shouldn't be necessary since a live FPU should
		 * indicate that TS is clear. However, various routines
		 * (such as sendsig & sigreturn) manipulate TS directly.
		 */
		FUNC3();
		/* registers are in FPU - save to memory */
		boolean_t is64 = (FUNC11(old) &&
		    FUNC7(old->machine.iss));

		FUNC5(ifps, is64);
		ifps->fp_valid = TRUE;

		if (fpu_ZMM_capable && (cdp->cpu_xstate == AVX512)) {
			FUNC14((struct x86_fx_thread_state *)&default_avx512_state, xstate_xmask[AVX512]);
		} else if (fpu_YMM_capable) {
			FUNC14((struct x86_fx_thread_state *) &default_avx_state, xstate_xmask[AVX]);
		} else {
			FUNC6((struct x86_fx_thread_state *)&default_fx_state);
		}
	}

	FUNC2(fpu_YMM_capable ? (FUNC13(XCR0) == xstate_xmask[cdp->cpu_xstate]) : TRUE, "XCR0 mismatch: 0x%llx 0x%x 0x%x", FUNC13(XCR0), cdp->cpu_xstate, xstate_xmask[cdp->cpu_xstate]);
	if (new_xstate != cdp->cpu_xstate) {
		FUNC0("fpu_switch_context(%p,%p) new xstate: %s\n",
			old, new, xstate_name[new_xstate]);
		FUNC15(0, xstate_xmask[new_xstate]);
		cdp->cpu_xstate = new_xstate;
	}
	FUNC10();
}