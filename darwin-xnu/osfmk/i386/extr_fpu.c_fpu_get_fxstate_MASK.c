#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fpu_fcw; } ;
typedef  TYPE_1__ x86_float_state64_t ;
struct TYPE_8__ {int /*<<< orphan*/  fpu_ymmh0; } ;
typedef  TYPE_2__ x86_avx_state64_t ;
struct TYPE_9__ {int /*<<< orphan*/  fpu_ymmh0; int /*<<< orphan*/  fpu_zmmh0; int /*<<< orphan*/  fpu_zmm16; int /*<<< orphan*/  fpu_k0; } ;
typedef  TYPE_3__ x86_avx512_state64_t ;
struct TYPE_10__ {int /*<<< orphan*/  fpu_ymmh0; int /*<<< orphan*/  fpu_zmmh0; int /*<<< orphan*/  fpu_k0; } ;
typedef  TYPE_4__ x86_avx512_state32_t ;
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ thread_state_t ;
typedef  scalar_t__ thread_flavor_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; } ;
struct x86_avx_thread_state {int /*<<< orphan*/  x_YMM_Hi128; } ;
struct x86_avx512_thread_state {int /*<<< orphan*/  x_YMM_Hi128; int /*<<< orphan*/  x_ZMM_Hi256; int /*<<< orphan*/  x_Hi16_ZMM; int /*<<< orphan*/  x_Opmask; } ;
typedef  TYPE_5__* pcb_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  _STRUCT_ZMM_REG ;
typedef  int /*<<< orphan*/  _STRUCT_YMM_REG ;
typedef  int /*<<< orphan*/  _STRUCT_XMM_REG ;
typedef  int /*<<< orphan*/  _STRUCT_OPMASK_REG ;
struct TYPE_11__ {int /*<<< orphan*/  lock; struct x86_fx_thread_state* ifps; } ;

/* Variables and functions */
#define  AVX 135 
#define  AVX512 134 
 int /*<<< orphan*/  FUNC0 (struct x86_avx512_thread_state*) ; 
 int /*<<< orphan*/  FALSE ; 
#define  FP 133 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ THREAD_NULL ; 
 TYPE_5__* FUNC1 (scalar_t__) ; 
#define  UNDEFINED 132 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * fp_state_size ; 
 scalar_t__ fpu_capability ; 
 int /*<<< orphan*/  initial_fp_state ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (scalar_t__) ; 
#define  x86_AVX512_STATE32 131 
#define  x86_AVX512_STATE64 130 
#define  x86_AVX_STATE32 129 
#define  x86_AVX_STATE64 128 

kern_return_t
FUNC14(
	thread_t	thr_act,
	thread_state_t	tstate,
	thread_flavor_t f)
{
	struct x86_fx_thread_state	*ifps;
	x86_float_state64_t		*state;
	kern_return_t			ret = KERN_FAILURE;
	pcb_t				pcb;

	if (fpu_capability == UNDEFINED)
		return KERN_FAILURE;

	if ((f == x86_AVX_STATE32 || f == x86_AVX_STATE64) &&
	    fpu_capability < AVX)
		return KERN_FAILURE;

#if !defined(RC_HIDE_XNU_J137)
	if ((f == x86_AVX512_STATE32 || f == x86_AVX512_STATE64) &&
	    FUNC13(thr_act) != AVX512)
		return KERN_FAILURE;
#endif

	state = (x86_float_state64_t *)tstate;

	FUNC2(thr_act != THREAD_NULL);
	pcb = FUNC1(thr_act);

	FUNC11(&pcb->lock);

	ifps = pcb->ifps;
	if (ifps == 0) {
		/*
		 * No valid floating-point state.
		 */

		FUNC3((char *)&initial_fp_state, (char *)&state->fpu_fcw,
		    fp_state_size[FP]);

		FUNC12(&pcb->lock);

		return KERN_SUCCESS;
	}
	/*
	 * Make sure we`ve got the latest fp state info
	 * If the live fpu state belongs to our target
	 */
	if (thr_act == FUNC7()) {
		boolean_t	intr;

		intr = FUNC9(FALSE);

		FUNC6();
		FUNC8(thr_act);
		FUNC5();

		(void)FUNC9(intr);
	}
	if (ifps->fp_valid) {
        	FUNC3((char *)ifps, (char *)&state->fpu_fcw, fp_state_size[FP]);
		switch (FUNC13(thr_act)) {
		    case UNDEFINED:
			FUNC10("fpu_get_fxstate() UNDEFINED xstate");
			break;
		    case FP:
			break;			/* already done */
		    case AVX: {
			struct x86_avx_thread_state *iavx = (void *) ifps;
			x86_avx_state64_t *xs = (x86_avx_state64_t *) state;
			if (f == x86_AVX_STATE32) {
				FUNC4(iavx->x_YMM_Hi128, &xs->fpu_ymmh0, 8 * sizeof(_STRUCT_XMM_REG));
			} else if (f == x86_AVX_STATE64) {
				FUNC4(iavx->x_YMM_Hi128, &xs->fpu_ymmh0, 16 * sizeof(_STRUCT_XMM_REG));
			}
			break;
		    }
#if !defined(RC_HIDE_XNU_J137)
		    case AVX512: {
			struct x86_avx512_thread_state *iavx = (void *) ifps;
			union {
				thread_state_t       ts;
				x86_avx512_state32_t *s32;
				x86_avx512_state64_t *s64;
			} xs = { .ts = tstate };
			switch (f) {
			    case x86_AVX512_STATE32:
				FUNC4(iavx->x_Opmask,    &xs.s32->fpu_k0,    8 * sizeof(_STRUCT_OPMASK_REG));
				FUNC4(iavx->x_ZMM_Hi256, &xs.s32->fpu_zmmh0, 8 * sizeof(_STRUCT_YMM_REG));
				FUNC4(iavx->x_YMM_Hi128, &xs.s32->fpu_ymmh0, 8 * sizeof(_STRUCT_XMM_REG));
				FUNC0(iavx);
				break;
			    case x86_AVX_STATE32:
				FUNC4(iavx->x_YMM_Hi128, &xs.s32->fpu_ymmh0, 8 * sizeof(_STRUCT_XMM_REG));
				break;
			    case x86_AVX512_STATE64:
				FUNC4(iavx->x_Opmask,    &xs.s64->fpu_k0,    8 * sizeof(_STRUCT_OPMASK_REG));
				FUNC4(iavx->x_Hi16_ZMM,  &xs.s64->fpu_zmm16, 16 * sizeof(_STRUCT_ZMM_REG));
				FUNC4(iavx->x_ZMM_Hi256, &xs.s64->fpu_zmmh0, 16 * sizeof(_STRUCT_YMM_REG));
				FUNC4(iavx->x_YMM_Hi128, &xs.s64->fpu_ymmh0, 16 * sizeof(_STRUCT_XMM_REG));
				FUNC0(iavx);
				break;
			    case x86_AVX_STATE64:
				FUNC4(iavx->x_YMM_Hi128, &xs.s64->fpu_ymmh0, 16 * sizeof(_STRUCT_XMM_REG));
				break;
			}
			break;
		    }
#endif
		}

		ret = KERN_SUCCESS;
	}
	FUNC12(&pcb->lock);

	return ret;
}