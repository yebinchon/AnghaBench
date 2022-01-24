#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  neon_fp16; int /*<<< orphan*/  neon_hpfp; int /*<<< orphan*/  neon; } ;
typedef  TYPE_1__ arm_mvfp_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  num_breakpoint_pairs; int /*<<< orphan*/  num_watchpoint_pairs; } ;
struct TYPE_8__ {scalar_t__ c_l2size; scalar_t__ c_dsize; } ;
struct TYPE_7__ {int thread_count; } ;

/* Variables and functions */
 int CPU_ARCH_ABI64 ; 
 scalar_t__ CPU_THREADTYPE_NONE ; 
 int FUNC0 () ; 
 TYPE_5__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  breakpoint_flag ; 
 TYPE_3__* FUNC3 () ; 
 int* cacheconfig ; 
 scalar_t__* cachesize ; 
 int cpu64bit ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  cpufamily ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  cpusubtype ; 
 scalar_t__ cputhreadtype ; 
 int cputype ; 
 int /*<<< orphan*/  gNeon ; 
 int /*<<< orphan*/  gNeonFp16 ; 
 int /*<<< orphan*/  gNeonHpfp ; 
 int k64Bit ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 () ; 
 int packages ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  sysctl__hw_cputhreadtype ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watchpoint_flag ; 

void
FUNC16(void)
{
	cputype = FUNC6();
	cpusubtype = FUNC4();
	cputhreadtype = FUNC5();
#if defined(__i386__) || defined (__x86_64__)
	cpu64bit = (FUNC0() & k64Bit) == k64Bit;
#elif defined(__arm__) || defined (__arm64__)
	cpu64bit = (cputype & CPU_ARCH_ABI64) == CPU_ARCH_ABI64;
#else
#error Unsupported arch
#endif

	/*
	 * Populate the optional portion of the hw.* MIB.
	 *
	 * XXX This could be broken out into parts of the code
	 *     that actually directly relate to the functions in
	 *     question.
	 */

	if (cputhreadtype != CPU_THREADTYPE_NONE) {
		FUNC15(&sysctl__hw_cputhreadtype);
	}

#if defined (__i386__) || defined (__x86_64__)
	/* hw.cpufamily */
	cpufamily = FUNC7();

	/* hw.cacheconfig */
	cacheconfig[0] = FUNC10(0);
	cacheconfig[1] = FUNC10(1);
	cacheconfig[2] = FUNC10(2);
	cacheconfig[3] = FUNC10(3);
	cacheconfig[4] = 0;

	/* hw.cachesize */
	cachesize[0] = FUNC11(0);
	cachesize[1] = FUNC11(1);
	cachesize[2] = FUNC11(2);
	cachesize[3] = FUNC11(3);
	cachesize[4] = 0;

	/* hw.packages */
	packages = FUNC14(FUNC10(0), FUNC9()->thread_count)
			/ FUNC9()->thread_count;

#elif defined(__arm__) || defined(__arm64__) /* end __i386 */

	cpufamily = cpuid_get_cpufamily();

	watchpoint_flag = arm_debug_info()->num_watchpoint_pairs;
	breakpoint_flag = arm_debug_info()->num_breakpoint_pairs;

	arm_mvfp_info_t *mvfp_info = arm_mvfp_info();
	gNeon = mvfp_info->neon;
	gNeonHpfp = mvfp_info->neon_hpfp;
	gNeonFp16 = mvfp_info->neon_fp16;

	cacheconfig[0] = ml_get_max_cpus();
	cacheconfig[1] = 1;
	cacheconfig[2] = cache_info()->c_l2size ? 1:0;
	cacheconfig[3] = 0;
	cacheconfig[4] = 0;
	cacheconfig[5] = 0;
	cacheconfig[6] = 0;

	cachesize[0] = ml_get_machine_mem();
	cachesize[1] = cache_info()->c_dsize; /* Using the DCache */
	cachesize[2] = cache_info()->c_l2size;
	cachesize[3] = 0;
	cachesize[4] = 0;

	packages = 1;
#else
#error unknown architecture
#endif /* !__i386__ && !__x86_64 && !__arm__ && !__arm64__ */

}