#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 size_t AVX512 ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_ALIGNMENT_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* fp_state_size ; 
 size_t fpu_capability ; 
 size_t fpu_default ; 
 int /*<<< orphan*/ * ifps_zone ; 
 int /*<<< orphan*/  initial_fp_state ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int thread_max ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	if (!FUNC0(fpu_default))
		FUNC2("fpu_module_init: invalid extended state %u\n",
			fpu_default);

	/* We explicitly choose an allocation size of 13 pages = 64 * 832
	 * to eliminate waste for the 832 byte sized
	 * AVX XSAVE register save area.
	 */
	ifps_zone[fpu_default] = FUNC3(fp_state_size[fpu_default],
				       thread_max * fp_state_size[fpu_default],
				       64 * fp_state_size[fpu_default],
				       "x86 fpsave state");

	/* To maintain the required alignment, disable
	 * zone debugging for this zone as that appends
	 * 16 bytes to each element.
	 */
	FUNC4(ifps_zone[fpu_default], Z_ALIGNMENT_REQUIRED, TRUE);

#if !defined(RC_HIDE_XNU_J137)
	/*
	 * If AVX512 is supported, create a separate savearea zone.
	 * with allocation size: 19 pages = 32 * 2668
	 */
	if (fpu_capability == AVX512) {
		ifps_zone[AVX512] = FUNC3(fp_state_size[AVX512],
					  thread_max * fp_state_size[AVX512],
					  32 * fp_state_size[AVX512],
					  "x86 avx512 save state");
		FUNC4(ifps_zone[AVX512], Z_ALIGNMENT_REQUIRED, TRUE);
	}
#endif

	/* Determine MXCSR reserved bits and configure initial FPU state*/
	FUNC1(&initial_fp_state);
}