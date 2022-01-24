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
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int uint32_t ;
struct TYPE_10__ {int kaddr; int ksize; int /*<<< orphan*/  PhysicalMemorySize; int /*<<< orphan*/  MemoryMapSize; int /*<<< orphan*/  MemoryMap; int /*<<< orphan*/  CommandLine; int /*<<< orphan*/  Version; int /*<<< orphan*/  Revision; } ;
typedef  TYPE_1__ boot_args ;
typedef  int boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  cpu_int_stack_top; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  ID ; 
 scalar_t__ FUNC1 (void*) ; 
 void* IdlePML4 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t LAPIC_ID_MASK ; 
 size_t LAPIC_ID_SHIFT ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_IA32_GS_BASE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PE_INIT_PLATFORM_D ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VSTART_CPU_DESC_INIT ; 
 int /*<<< orphan*/  VSTART_CPU_MODE_INIT ; 
 int /*<<< orphan*/  VSTART_ENTRY ; 
 int /*<<< orphan*/  VSTART_EXIT ; 
 int /*<<< orphan*/  VSTART_IDLE_PTS_INIT ; 
 int /*<<< orphan*/  VSTART_IDT_INIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ first_avail ; 
 scalar_t__ i386_init ; 
 scalar_t__ i386_init_slave ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* kernelBootArgs ; 
 int* lapic_to_cpu ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* physfree ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (uintptr_t,int /*<<< orphan*/ ) ; 

__attribute__((noreturn))
void
FUNC21(vm_offset_t boot_args_start)
{
	boolean_t	is_boot_cpu = !(boot_args_start == 0);
	int		cpu = 0;
	uint32_t	lphysfree;

	FUNC16(VSTART_ENTRY);

	if (is_boot_cpu) {
		/*
		 * Set-up temporary trap handlers during page-table set-up.
		 */
		FUNC19();
		FUNC16(VSTART_IDT_INIT);

		/*
		 * Get startup parameters.
		 */
		kernelBootArgs = (boot_args *)boot_args_start;
		lphysfree = kernelBootArgs->kaddr + kernelBootArgs->ksize;
		physfree = (void *)(uintptr_t)((lphysfree + PAGE_SIZE - 1) &~ (PAGE_SIZE - 1));

#if DEVELOPMENT || DEBUG
		pal_serial_init();
#endif
		FUNC0("revision      0x%x\n", kernelBootArgs->Revision);
		FUNC0("version       0x%x\n", kernelBootArgs->Version);
		FUNC0("command line  %s\n", kernelBootArgs->CommandLine);
		FUNC0("memory map    0x%x\n", kernelBootArgs->MemoryMap);
		FUNC0("memory map sz 0x%x\n", kernelBootArgs->MemoryMapSize);
		FUNC0("kaddr         0x%x\n", kernelBootArgs->kaddr);
		FUNC0("ksize         0x%x\n", kernelBootArgs->ksize);
		FUNC0("physfree      %p\n", physfree);
		FUNC0("bootargs: %p, &ksize: %p &kaddr: %p\n",
			kernelBootArgs, 
			&kernelBootArgs->ksize,
			&kernelBootArgs->kaddr);
		FUNC0("SMBIOS mem sz 0x%llx\n", kernelBootArgs->PhysicalMemorySize);

		/*
		 * Setup boot args given the physical start address.
		 * Note: PE_init_platform needs to be called before Idle_PTs_init
		 * because access to the DeviceTree is required to read the
		 * random seed before generating a random physical map slide.
		 */
		kernelBootArgs = (boot_args *)
		    FUNC13(boot_args_start);
		FUNC0("i386_init(0x%lx) kernelBootArgs=%p\n",
		    (unsigned long)boot_args_start, kernelBootArgs);

#if KASAN
		kasan_reserve_memory(kernelBootArgs);
#endif

		FUNC4(FALSE, kernelBootArgs);
		FUNC16(PE_INIT_PLATFORM_D);

		FUNC2();
		FUNC16(VSTART_IDLE_PTS_INIT);

#if KASAN
		/* Init kasan and map whatever was stolen from physfree */
		kasan_init();
		kasan_notify_stolen((uintptr_t)ml_static_ptovirt((vm_offset_t)physfree));
#endif

#if MONOTONIC
		mt_early_init();
#endif /* MONOTONIC */

		first_avail = (vm_offset_t)FUNC1(physfree);

		FUNC5(TRUE);

		FUNC7(FUNC6(0));
		FUNC16(VSTART_CPU_DESC_INIT);
		FUNC8(FUNC6(0));

		FUNC16(VSTART_CPU_MODE_INIT);
		FUNC9(FUNC6(0)); /* cpu_syscall_init() will be
						 * invoked on the APs
						 * via i386_init_slave()
						 */
	} else {
		/* Switch to kernel's page tables (from the Boot PTs) */
		FUNC18((uintptr_t)FUNC1(IdlePML4));
		/* Find our logical cpu number */
		cpu = lapic_to_cpu[(FUNC3(ID)>>LAPIC_ID_SHIFT) & LAPIC_ID_MASK];
		FUNC0("CPU: %d, GSBASE initial value: 0x%llx\n", cpu, FUNC17(MSR_IA32_GS_BASE));
		FUNC8(FUNC6(cpu));
	}

	FUNC16(VSTART_EXIT);
	FUNC20(is_boot_cpu ? (uintptr_t) i386_init
				     : (uintptr_t) i386_init_slave,
			 FUNC6(cpu)->cpu_int_stack_top);
}