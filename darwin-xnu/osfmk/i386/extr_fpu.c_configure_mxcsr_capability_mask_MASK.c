#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int fx_MXCSR_MASK; int fp_valid; int /*<<< orphan*/  fp_save_layout; TYPE_4__** fx_XMM_reg; } ;
struct TYPE_11__ {TYPE_4__* x_Opmask; TYPE_4__* x_Hi16_ZMM; TYPE_4__* x_ZMM_Hi256; } ;
struct TYPE_10__ {TYPE_4__* x_YMM_Hi128; } ;
struct TYPE_13__ {TYPE_3__ fx; TYPE_2__ avx512; TYPE_1__ avx; } ;
typedef  TYPE_4__ x86_ext_thread_state_t ;
struct x86_fx_thread_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 size_t AVX ; 
 size_t AVX512 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FP_UNUSED ; 
 int /*<<< orphan*/  FXSAVE32 ; 
 int TRUE ; 
 int /*<<< orphan*/  XSAVE32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  default_avx512_state ; 
 int /*<<< orphan*/  default_avx_state ; 
 int /*<<< orphan*/  default_fx_state ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ fpu_YMM_capable ; 
 scalar_t__ fpu_ZMM_capable ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct x86_fx_thread_state*) ; 
 int mxcsr_capability_mask ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct x86_fx_thread_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * xstate_xmask ; 

__attribute__((used)) static void
FUNC9(x86_ext_thread_state_t *fps)
{
	/* XSAVE requires a 64 byte aligned store */
	FUNC1(FUNC0(fps, 64));
	/* Clear, to prepare for the diagnostic FXSAVE */
	FUNC2(fps, sizeof(*fps));

	FUNC3();
	FUNC5(fps, FALSE);

	mxcsr_capability_mask = fps->fx.fx_MXCSR_MASK;

	/* Set default mask value if necessary */
	if (mxcsr_capability_mask == 0)
		mxcsr_capability_mask = 0xffbf;
	
	/* Clear vector register store */
	FUNC2(&fps->fx.fx_XMM_reg[0][0],   sizeof(fps->fx.fx_XMM_reg));
	FUNC2(fps->avx.x_YMM_Hi128, sizeof(fps->avx.x_YMM_Hi128));
#if !defined(RC_HIDE_XNU_J137)
	if (fpu_ZMM_capable) {
		FUNC2(fps->avx512.x_ZMM_Hi256, sizeof(fps->avx512.x_ZMM_Hi256));
		FUNC2(fps->avx512.x_Hi16_ZMM,  sizeof(fps->avx512.x_Hi16_ZMM));
		FUNC2(fps->avx512.x_Opmask,    sizeof(fps->avx512.x_Opmask));
	}
#endif

	fps->fx.fp_valid = TRUE;
	fps->fx.fp_save_layout = fpu_YMM_capable ? XSAVE32: FXSAVE32;
	FUNC4(fps);

	if (fpu_ZMM_capable) {
		FUNC8((struct x86_fx_thread_state *)&default_avx512_state, xstate_xmask[AVX512]);
	}
	if (fpu_YMM_capable) {
		FUNC8((struct x86_fx_thread_state *)&default_avx_state, xstate_xmask[AVX]);
	} else {
		FUNC6((struct x86_fx_thread_state *)&default_fx_state);
	}

	/* Poison values to trap unsafe usage */
	fps->fx.fp_valid = 0xFFFFFFFF;
	fps->fx.fp_save_layout = FP_UNUSED;

	/* Re-enable FPU/SSE DNA exceptions */
	FUNC7();
}