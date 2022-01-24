#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {unsigned int MemoryMapDescriptorSize; unsigned int MemoryMapSize; scalar_t__ Version; scalar_t__ efiSystemTable; int /*<<< orphan*/  efiMode; int /*<<< orphan*/  Revision; scalar_t__ efiRuntimeServicesPageCount; scalar_t__ efiRuntimeServicesPageStart; scalar_t__ MemoryMap; } ;
typedef  TYPE_1__ boot_args ;
struct TYPE_6__ {scalar_t__ bootArgs; } ;
struct TYPE_5__ {int Attribute; scalar_t__ Type; scalar_t__ NumberOfPages; scalar_t__ PhysicalStart; scalar_t__ VirtualStart; } ;
typedef  TYPE_2__ EfiMemoryRange ;
typedef  int /*<<< orphan*/  EFI_SYSTEM_TABLE_64 ;
typedef  int /*<<< orphan*/  EFI_SYSTEM_TABLE_32 ;

/* Variables and functions */
 int EFI_MEMORY_RUNTIME ; 
 scalar_t__ EfiMemoryMappedIO ; 
 scalar_t__ FALSE ; 
 TYPE_3__ PE_state ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  VM_WIMG_IO ; 
 int /*<<< orphan*/  VM_WIMG_USE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ gPEEFIRuntimeServices ; 
 scalar_t__ gPEEFISystemTable ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  kBootArgsEfiMode64 ; 
 scalar_t__ kBootArgsVersion2 ; 
 scalar_t__ kEfiRuntimeServicesCode ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

void
FUNC10(void * map, vm_size_t map_size, uint32_t system_table_offset)
{
    boot_args *args = (boot_args *)PE_state.bootArgs;

    FUNC3("Reinitializing EFI runtime services\n");

    do
    {
        vm_offset_t vm_size, vm_addr;
	vm_map_offset_t phys_addr;
	EfiMemoryRange *mptr;
	unsigned int msize, mcount;
	unsigned int i;

	gPEEFISystemTable     = 0;
	gPEEFIRuntimeServices = 0;

	system_table_offset += FUNC8(args->efiRuntimeServicesPageStart);

	FUNC3("Old system table 0x%x, new 0x%x\n",
	    (uint32_t)args->efiSystemTable,    system_table_offset);

	args->efiSystemTable    = system_table_offset;

	FUNC3("Old map:\n");
	msize = args->MemoryMapDescriptorSize;
	mcount = args->MemoryMapSize / msize;
	mptr = (EfiMemoryRange *)FUNC4(args->MemoryMap);
	for (i=0; i < mcount; i++, mptr = (EfiMemoryRange *)(((vm_offset_t)mptr) + msize)) {
	    if ((mptr->Attribute & EFI_MEMORY_RUNTIME) == EFI_MEMORY_RUNTIME) {

		vm_size = (vm_offset_t)FUNC2((uint32_t)mptr->NumberOfPages);
		vm_addr =   (vm_offset_t) mptr->VirtualStart;
		/* K64 on EFI32 */
		if (vm_addr < VM_MIN_KERNEL_ADDRESS)
			vm_addr |= VM_MIN_KERNEL_ADDRESS;
		phys_addr = (vm_map_offset_t) mptr->PhysicalStart;

		FUNC3("mapping[%u] %qx @ %lx, %llu\n", mptr->Type, phys_addr, (unsigned long)vm_addr, mptr->NumberOfPages);
	    }
	}

	FUNC7(kernel_pmap, FUNC2(args->efiRuntimeServicesPageStart), 
				 FUNC2(args->efiRuntimeServicesPageStart + args->efiRuntimeServicesPageCount));

	FUNC3("New map:\n");
	msize = args->MemoryMapDescriptorSize;
	mcount = (unsigned int )(map_size / msize);
	mptr = map;
	for (i=0; i < mcount; i++, mptr = (EfiMemoryRange *)(((vm_offset_t)mptr) + msize)) {
	    if ((mptr->Attribute & EFI_MEMORY_RUNTIME) == EFI_MEMORY_RUNTIME) {

		vm_size = (vm_offset_t)FUNC2((uint32_t)mptr->NumberOfPages);
		vm_addr =   (vm_offset_t) mptr->VirtualStart;
		if (vm_addr < VM_MIN_KERNEL_ADDRESS)
			vm_addr |= VM_MIN_KERNEL_ADDRESS;
		phys_addr = (vm_map_offset_t) mptr->PhysicalStart;

		FUNC3("mapping[%u] %qx @ %lx, %llu\n", mptr->Type, phys_addr, (unsigned long)vm_addr, mptr->NumberOfPages);

		FUNC6(vm_addr, phys_addr, phys_addr + FUNC9(vm_size),
			 (mptr->Type == kEfiRuntimeServicesCode) ? VM_PROT_READ | VM_PROT_EXECUTE : VM_PROT_READ|VM_PROT_WRITE,
			 (mptr->Type == EfiMemoryMappedIO)       ? VM_WIMG_IO   : VM_WIMG_USE_DEFAULT);
	    }
	}

        if (args->Version != kBootArgsVersion2)
            FUNC5("Incompatible boot args version %d revision %d\n", args->Version, args->Revision);

        FUNC3("Boot args version %d revision %d mode %d\n", args->Version, args->Revision, args->efiMode);
        if (args->efiMode == kBootArgsEfiMode64) {
	    FUNC1((EFI_SYSTEM_TABLE_64 *) FUNC4(args->efiSystemTable));
        } else {
	    FUNC0((EFI_SYSTEM_TABLE_32 *) FUNC4(args->efiSystemTable));
        }
    }
    while (FALSE);

    FUNC3("Done reinitializing EFI runtime services\n");

    return;
}