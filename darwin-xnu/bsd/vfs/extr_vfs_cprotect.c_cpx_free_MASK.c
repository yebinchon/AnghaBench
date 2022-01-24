#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_1__* cpx_t ;
struct TYPE_6__ {scalar_t__ cpx_magic1; int cpx_flags; int /*<<< orphan*/  cpx_max_key_len; int /*<<< orphan*/  cpx_cached_key; } ;

/* Variables and functions */
 int CPX_WRITE_PROTECTABLE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int PAGE_SIZE ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cpx_magic1 ; 
 scalar_t__ cpx_magic2 ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uint32_t ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(cpx_t cpx)
{

#if DEBUG
	assert(cpx->cpx_magic1 == cpx_magic1);
	assert(*PTR_ADD(uint32_t *, cpx, cpx_sizex(cpx) - 4) == cpx_magic2);
#endif
	
#if CONFIG_KEYPAGE_WP
	/* unprotect the page before bzeroing */
	void *cpxstart = (void*)cpx;
	void *cpxend = (void*)((uint8_t*)cpx + PAGE_SIZE); 
	if (cpx->cpx_flags & CPX_WRITE_PROTECTABLE) {
		vm_map_protect (kernel_map, (vm_map_offset_t)cpxstart, (vm_map_offset_t)cpxend, (VM_PROT_DEFAULT), FALSE);

		//now zero the memory after un-protecting it
		bzero(cpx->cpx_cached_key, cpx->cpx_max_key_len);

		//If we are here, then we used kmem_alloc to get the page. Must use kmem_free to drop it.
		kmem_free(kernel_map, (vm_offset_t)cpx, PAGE_SIZE);
		return;
	}
#else 
	FUNC3(cpx->cpx_cached_key, cpx->cpx_max_key_len);
	FUNC0(cpx, M_TEMP);
	return;
#endif

}