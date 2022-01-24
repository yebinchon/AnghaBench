#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  fpu_fcw; int /*<<< orphan*/  fpu_mxcsr; } ;
typedef  TYPE_5__ x86_float_state64_t ;
struct TYPE_16__ {int /*<<< orphan*/  fpu_ymmh0; } ;
typedef  TYPE_6__ x86_avx_state64_t ;
struct TYPE_17__ {int /*<<< orphan*/  fpu_ymmh0; int /*<<< orphan*/  fpu_zmmh0; int /*<<< orphan*/  fpu_zmm16; int /*<<< orphan*/  fpu_k0; } ;
typedef  TYPE_7__ x86_avx512_state64_t ;
struct TYPE_18__ {int /*<<< orphan*/  fpu_ymmh0; int /*<<< orphan*/  fpu_zmmh0; int /*<<< orphan*/  fpu_k0; } ;
typedef  TYPE_8__ x86_avx512_state32_t ;
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ thread_state_t ;
typedef  scalar_t__ thread_flavor_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; int /*<<< orphan*/  fp_save_layout; } ;
struct TYPE_12__ {int xstate_bv; int /*<<< orphan*/  xcomp_bv; int /*<<< orphan*/ * xhrsvd; } ;
struct TYPE_11__ {void* fp_save_layout; } ;
struct x86_avx_thread_state {TYPE_2__ _xh; int /*<<< orphan*/  x_YMM_Hi128; TYPE_1__ fp; } ;
struct TYPE_14__ {int /*<<< orphan*/  xcomp_bv; int /*<<< orphan*/  xstate_bv; int /*<<< orphan*/ * xhrsvd; } ;
struct TYPE_13__ {void* fp_save_layout; } ;
struct x86_avx512_thread_state {int /*<<< orphan*/  x_YMM_Hi128; int /*<<< orphan*/  x_ZMM_Hi256; int /*<<< orphan*/  x_Hi16_ZMM; int /*<<< orphan*/  x_Opmask; TYPE_4__ _xh; TYPE_3__ fp; } ;
typedef  TYPE_9__* pcb_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  _STRUCT_ZMM_REG ;
typedef  int /*<<< orphan*/  _STRUCT_YMM_REG ;
typedef  int /*<<< orphan*/  _STRUCT_XMM_REG ;
typedef  int /*<<< orphan*/  _STRUCT_OPMASK_REG ;
struct TYPE_19__ {int xstate; int /*<<< orphan*/  lock; struct x86_fx_thread_state* ifps; } ;

/* Variables and functions */
#define  AVX 135 
#define  AVX512 134 
 int /*<<< orphan*/  AVX512_XMASK ; 
 int AVX_XMASK ; 
 int /*<<< orphan*/  FUNC0 (struct x86_avx512_thread_state*) ; 
 scalar_t__ FALSE ; 
#define  FP 133 
 int /*<<< orphan*/  FXSAVE32 ; 
 int /*<<< orphan*/  FXSAVE64 ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ THREAD_NULL ; 
 TYPE_9__* FUNC1 (scalar_t__) ; 
 scalar_t__ TRUE ; 
#define  UNDEFINED 132 
 int XFEM_SSE ; 
 int XFEM_X87 ; 
 void* XSAVE32 ; 
 void* XSAVE64 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 () ; 
 struct x86_fx_thread_state* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct x86_fx_thread_state*,int) ; 
 int /*<<< orphan*/ * fp_state_size ; 
 scalar_t__ fpu_capability ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  mxcsr_capability_mask ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 
#define  x86_AVX512_STATE32 131 
#define  x86_AVX512_STATE64 130 
#define  x86_AVX_STATE32 129 
#define  x86_AVX_STATE64 128 

kern_return_t
FUNC17(
	thread_t	thr_act,
	thread_state_t	tstate,
	thread_flavor_t f)
{
	struct x86_fx_thread_state	*ifps;
	struct x86_fx_thread_state	*new_ifps;
	x86_float_state64_t		*state;
	pcb_t				pcb;
	boolean_t			old_valid, fresh_state = FALSE;

	if (fpu_capability == UNDEFINED)
		return KERN_FAILURE;

	if ((f == x86_AVX_STATE32 || f == x86_AVX_STATE64) &&
	    fpu_capability < AVX)
		return KERN_FAILURE;

#if !defined(RC_HIDE_XNU_J137)
	if ((f == x86_AVX512_STATE32 || f == x86_AVX512_STATE64) &&
	    FUNC16(thr_act) == AVX)
		if (!FUNC9(thr_act))
			return KERN_FAILURE;
#endif

	state = (x86_float_state64_t *)tstate;

	FUNC2(thr_act != THREAD_NULL);
	pcb = FUNC1(thr_act);

	if (state == NULL) {
		/*
		 * new FPU state is 'invalid'.
		 * Deallocate the fp state if it exists.
		 */
		FUNC13(&pcb->lock);

		ifps = pcb->ifps;
		pcb->ifps = 0;

		FUNC14(&pcb->lock);

		if (ifps != 0) {
			FUNC8(ifps, FUNC16(thr_act));
		}
	} else {
		/*
		 * Valid incoming state. Allocate the fp state if there is none.
		 */
		new_ifps = 0;
		Retry:
		FUNC13(&pcb->lock);

		ifps = pcb->ifps;
		if (ifps == 0) {
			if (new_ifps == 0) {
				FUNC14(&pcb->lock);
				new_ifps = FUNC7(FUNC16(thr_act));
				goto Retry;
			}
			ifps = new_ifps;
			new_ifps = 0;
			pcb->ifps = ifps;
			pcb->xstate = FUNC16(thr_act);
			fresh_state = TRUE;
		}

		/*
		 * now copy over the new data.
		 */

		old_valid = ifps->fp_valid;

#if	DEBUG || DEVELOPMENT
		if ((fresh_state == FALSE) && (old_valid == FALSE) && (thr_act != current_thread())) {
			panic("fpu_set_fxstate inconsistency, thread: %p not stopped", thr_act);
		}
#endif
		/*
		 * Clear any reserved bits in the MXCSR to prevent a GPF
		 * when issuing an FXRSTOR.
		 */

		state->fpu_mxcsr &= mxcsr_capability_mask;

		FUNC3((char *)&state->fpu_fcw, (char *)ifps, fp_state_size[FP]);

		switch (FUNC16(thr_act)) {
		    case UNDEFINED:
			FUNC11("fpu_set_fxstate() UNDEFINED xstate");
			break;
		    case FP:
			ifps->fp_save_layout = FUNC15(thr_act) ? FXSAVE64 : FXSAVE32;
			break;
		    case AVX: {
			struct x86_avx_thread_state *iavx = (void *) ifps;
			x86_avx_state64_t *xs = (x86_avx_state64_t *) state;

			iavx->fp.fp_save_layout = FUNC15(thr_act) ? XSAVE64 : XSAVE32;

			/* Sanitize XSAVE header */
			FUNC5(&iavx->_xh.xhrsvd[0], sizeof(iavx->_xh.xhrsvd));
			iavx->_xh.xstate_bv = AVX_XMASK;
			iavx->_xh.xcomp_bv  = 0;

			if (f == x86_AVX_STATE32) {
				FUNC4(&xs->fpu_ymmh0, iavx->x_YMM_Hi128, 8 * sizeof(_STRUCT_XMM_REG));
			} else if (f == x86_AVX_STATE64) {
				FUNC4(&xs->fpu_ymmh0, iavx->x_YMM_Hi128, 16 * sizeof(_STRUCT_XMM_REG));
			} else {
				iavx->_xh.xstate_bv = (XFEM_SSE | XFEM_X87);
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

			iavx->fp.fp_save_layout = FUNC15(thr_act) ? XSAVE64 : XSAVE32;

			/* Sanitize XSAVE header */
			FUNC5(&iavx->_xh.xhrsvd[0], sizeof(iavx->_xh.xhrsvd));
			iavx->_xh.xstate_bv = AVX512_XMASK;
			iavx->_xh.xcomp_bv  = 0;

			switch (f) {
			    case x86_AVX512_STATE32:
				FUNC4(&xs.s32->fpu_k0,    iavx->x_Opmask,     8 * sizeof(_STRUCT_OPMASK_REG));
				FUNC4(&xs.s32->fpu_zmmh0, iavx->x_ZMM_Hi256,  8 * sizeof(_STRUCT_YMM_REG));
				FUNC4(&xs.s32->fpu_ymmh0, iavx->x_YMM_Hi128,  8 * sizeof(_STRUCT_XMM_REG));
				FUNC0(iavx);
				break;
			    case x86_AVX_STATE32:
				FUNC4(&xs.s32->fpu_ymmh0, iavx->x_YMM_Hi128,  8 * sizeof(_STRUCT_XMM_REG));
				break;
			    case x86_AVX512_STATE64:
				FUNC4(&xs.s64->fpu_k0,    iavx->x_Opmask,     8 * sizeof(_STRUCT_OPMASK_REG));
				FUNC4(&xs.s64->fpu_zmm16, iavx->x_Hi16_ZMM,  16 * sizeof(_STRUCT_ZMM_REG));
				FUNC4(&xs.s64->fpu_zmmh0, iavx->x_ZMM_Hi256, 16 * sizeof(_STRUCT_YMM_REG));
				FUNC4(&xs.s64->fpu_ymmh0, iavx->x_YMM_Hi128, 16 * sizeof(_STRUCT_XMM_REG));
				FUNC0(iavx);
				break;
			    case x86_AVX_STATE64:
				FUNC4(&xs.s64->fpu_ymmh0, iavx->x_YMM_Hi128, 16 * sizeof(_STRUCT_XMM_REG));
				break;
			}
			break;
		    }
#endif
		}

		ifps->fp_valid = old_valid;

		if (old_valid == FALSE) {
			boolean_t istate = FUNC10(FALSE);
			ifps->fp_valid = TRUE;
			/* If altering the current thread's state, disable FPU */
			if (thr_act == FUNC6())
				FUNC12();

			FUNC10(istate);
		}

		FUNC14(&pcb->lock);

		if (new_ifps != 0)
			FUNC8(new_ifps, FUNC16(thr_act));
	}
	return KERN_SUCCESS;
}