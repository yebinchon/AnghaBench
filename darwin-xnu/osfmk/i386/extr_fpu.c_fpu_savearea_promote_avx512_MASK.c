#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  fp_valid; } ;
struct x86_avx_thread_state {TYPE_1__ fp; } ;
struct x86_avx512_thread_state {TYPE_1__ fp; } ;
typedef  TYPE_2__* pcb_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {size_t cpu_xstate; } ;
struct TYPE_6__ {size_t xstate; int /*<<< orphan*/  lock; struct x86_avx_thread_state* ifps; } ;

/* Variables and functions */
 size_t AVX ; 
 size_t AVX512 ; 
 int /*<<< orphan*/  AVX512_XMASK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FALSE ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct x86_avx_thread_state*,struct x86_avx_thread_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__* FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct x86_avx_thread_state* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct x86_avx_thread_state*,size_t) ; 
 int /*<<< orphan*/ * fp_state_size ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(thread_t thread)
{
	struct x86_avx_thread_state	*ifps = NULL;
	struct x86_avx512_thread_state	*ifps512 = NULL;
	pcb_t				pcb = FUNC1(thread);
	boolean_t			do_avx512_alloc = FALSE;

	FUNC0("fpu_upgrade_savearea(%p)\n", thread);

	FUNC13(&pcb->lock);

	ifps = pcb->ifps;
	if (ifps == NULL) {
		pcb->xstate = AVX512;
		FUNC14(&pcb->lock);
		if (thread != FUNC7()) {
			/* nothing to be done */

			return;
		}
		FUNC11();
		return;
	}

	if (pcb->xstate != AVX512) {
		do_avx512_alloc = TRUE;
	}
	FUNC14(&pcb->lock);

	if (do_avx512_alloc == TRUE) {
		ifps512 = FUNC9(AVX512);
	}

	FUNC13(&pcb->lock);
	if (thread == FUNC7()) {
		boolean_t	intr;

		intr = FUNC12(FALSE);

		FUNC5();
		FUNC8(thread);
		FUNC4();

		FUNC15(0, AVX512_XMASK);
		FUNC6()->cpu_xstate = AVX512;
		(void)FUNC12(intr);
	}
	FUNC2(ifps->fp.fp_valid);

	/* Allocate an AVX512 savearea and copy AVX state into it */
	if (pcb->xstate != AVX512) {
		FUNC3(ifps, ifps512, fp_state_size[AVX]);
		pcb->ifps = ifps512;
		pcb->xstate = AVX512;
		ifps512 = NULL;
	} else {
		ifps = NULL;
	}
	/* The PCB lock is redundant in some scenarios given the higher level
	 * thread mutex, but its pre-emption disablement is relied upon here
	 */
	FUNC14(&pcb->lock);

	if (ifps) {
		FUNC10(ifps, AVX);
	}
	if (ifps512) {
		FUNC10(ifps, AVX512);
	}
}