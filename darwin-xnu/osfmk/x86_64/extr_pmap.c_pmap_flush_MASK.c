#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int pfc_cpus; int pfc_invalid_global; } ;
typedef  TYPE_1__ pmap_flush_context ;
typedef  int cpumask_t ;
typedef  int boolean_t ;
struct TYPE_5__ {scalar_t__ cpu_tlb_invalid; void* cpu_tlb_invalid_local; void* cpu_tlb_invalid_global; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ FALSE ; 
 scalar_t__ LockTimeOut ; 
 int /*<<< orphan*/  MP_TLB_FLUSH ; 
 long NMIPI_acks ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int,...) ; 
 int /*<<< orphan*/  PMAP__FLUSH_DELAYED_TLBS ; 
 int /*<<< orphan*/  PMAP__FLUSH_TLBS_TO ; 
 scalar_t__ TLBTimeOut ; 
 int /*<<< orphan*/  TLB_FLUSH_TIMEOUT ; 
 void* TRUE ; 
 TYPE_3__* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,int,long,long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 unsigned int real_ncpus ; 

void
FUNC16(
	pmap_flush_context *pfc)
{
	unsigned int	my_cpu;
	unsigned int	cpu;
	cpumask_t	cpu_bit;
	cpumask_t	cpus_to_respond = 0;
	cpumask_t	cpus_to_signal = 0;
	cpumask_t	cpus_signaled = 0;
	boolean_t	flush_self = FALSE;
	uint64_t	deadline;

	FUNC12();

	my_cpu = FUNC6();
	cpus_to_signal = pfc->pfc_cpus;

	FUNC3(FUNC2(PMAP__FLUSH_DELAYED_TLBS) | DBG_FUNC_START,
	                    NULL, cpus_to_signal);

	for (cpu = 0, cpu_bit = 1; cpu < real_ncpus && cpus_to_signal; cpu++, cpu_bit <<= 1) {

		if (cpus_to_signal & cpu_bit) {

			cpus_to_signal &= ~cpu_bit;

			if (!FUNC5(cpu))
				continue;

			if (pfc->pfc_invalid_global & cpu_bit)
				FUNC4(cpu)->cpu_tlb_invalid_global = TRUE;
			else
				FUNC4(cpu)->cpu_tlb_invalid_local = TRUE;
			FUNC11();

			if (cpu == my_cpu) {
				flush_self = TRUE;
				continue;
			}
			if (FUNC0(cpu)) {
				cpus_to_respond |= cpu_bit;
				FUNC8(cpu, MP_TLB_FLUSH, ASYNC);
			}
		}
	}
	cpus_signaled = cpus_to_respond;

	/*
	 * Flush local tlb if required.
	 * Do this now to overlap with other processors responding.
	 */
	if (flush_self && FUNC4(my_cpu)->cpu_tlb_invalid != FALSE)
		FUNC15();

	if (cpus_to_respond) {

		deadline = FUNC9() +
				(TLBTimeOut ? TLBTimeOut : LockTimeOut);
		boolean_t is_timeout_traced = FALSE;

		/*
		 * Wait for those other cpus to acknowledge
		 */
		while (cpus_to_respond != 0) {
			long orig_acks = 0;

			for (cpu = 0, cpu_bit = 1; cpu < real_ncpus; cpu++, cpu_bit <<= 1) {
				/* Consider checking local/global invalidity
				 * as appropriate in the PCID case.
				 */
				if ((cpus_to_respond & cpu_bit) != 0) {
					if (!FUNC5(cpu) ||
					    FUNC4(cpu)->cpu_tlb_invalid == FALSE ||
					    !FUNC0(cpu)) {
						cpus_to_respond &= ~cpu_bit;
					}
					FUNC7();
				}
				if (cpus_to_respond == 0)
					break;
			}
			if (cpus_to_respond && (FUNC9() > deadline)) {
				if (FUNC10())
					continue;
				if (TLBTimeOut == 0) {
					if (is_timeout_traced)
						continue;

					FUNC3(FUNC2(PMAP__FLUSH_TLBS_TO),
					                    NULL, cpus_to_signal, cpus_to_respond);

					is_timeout_traced = TRUE;
					continue;
				}
				orig_acks = NMIPI_acks;
				FUNC1(cpus_to_respond, TLB_FLUSH_TIMEOUT);
				FUNC14("Uninterruptible processor(s): CPU bitmap: 0x%llx, NMIPI acks: 0x%lx, now: 0x%lx, deadline: %llu",
				      cpus_to_respond, orig_acks, NMIPI_acks, deadline);
			}
		}
	}

	FUNC3(FUNC2(PMAP__FLUSH_DELAYED_TLBS) | DBG_FUNC_END,
	                    NULL, cpus_signaled, flush_self);

	FUNC13();
}