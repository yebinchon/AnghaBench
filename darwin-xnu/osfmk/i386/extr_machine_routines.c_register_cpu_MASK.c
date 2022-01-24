#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * processor_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {int /*<<< orphan*/ * core; } ;
struct TYPE_7__ {int cpu_number; int /*<<< orphan*/ * cpu_console_buf; int /*<<< orphan*/ * cpu_pmap; int /*<<< orphan*/ * cpu_processor; TYPE_1__ lcpu; int /*<<< orphan*/  cpu_phys_number; } ;
typedef  TYPE_2__ cpu_data_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static kern_return_t
FUNC12(
        uint32_t        lapic_id,
	processor_t     *processor_out,
	boolean_t       boot_cpu )
{
	int		target_cpu;
	cpu_data_t	*this_cpu_datap;

	this_cpu_datap = FUNC3(boot_cpu);
	if (this_cpu_datap == NULL) {
		return KERN_FAILURE;
	}
	target_cpu = this_cpu_datap->cpu_number;
	FUNC0((boot_cpu && (target_cpu == 0)) ||
	      (!boot_cpu && (target_cpu != 0)));

	FUNC9(lapic_id, target_cpu);

	/* The cpu_id is not known at registration phase. Just do
	 * lapic_id for now 
	 */
	this_cpu_datap->cpu_phys_number = lapic_id;

	this_cpu_datap->cpu_console_buf = FUNC1(boot_cpu);
	if (this_cpu_datap->cpu_console_buf == NULL)
		goto failed;

#if KPC
	if (kpc_register_cpu(this_cpu_datap) != TRUE)
		goto failed;
#endif

	if (!boot_cpu) {
		FUNC6(this_cpu_datap->cpu_number);
		if (this_cpu_datap->lcpu.core == NULL)
			goto failed;

#if NCOPY_WINDOWS > 0
		this_cpu_datap->cpu_pmap = pmap_cpu_alloc(boot_cpu);
		if (this_cpu_datap->cpu_pmap == NULL)
			goto failed;
#endif

		this_cpu_datap->cpu_processor = FUNC4(boot_cpu);
		if (this_cpu_datap->cpu_processor == NULL)
			goto failed;
		/*
		 * processor_init() deferred to topology start
		 * because "slot numbers" a.k.a. logical processor numbers
	 	 * are not yet finalized.
		 */
	}

	*processor_out = this_cpu_datap->cpu_processor;

	return KERN_SUCCESS;

failed:
	FUNC5(this_cpu_datap->cpu_processor);
#if NCOPY_WINDOWS > 0
	pmap_cpu_free(this_cpu_datap->cpu_pmap);
#endif
	FUNC2(this_cpu_datap->cpu_console_buf);
#if KPC
	kpc_unregister_cpu(this_cpu_datap);
#endif /* KPC */

	return KERN_FAILURE;
}