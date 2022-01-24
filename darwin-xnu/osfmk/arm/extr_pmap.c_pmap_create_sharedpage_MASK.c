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
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int ARM_PTE_NG ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PMAP_COMM_PAGE_PTE_TEMPLATE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_WIMG_USE_DEFAULT ; 
 int /*<<< orphan*/  _COMM_HIGH_PAGE64_BASE_ADDRESS ; 
 int /*<<< orphan*/  _COMM_PAGE32_BASE_ADDRESS ; 
 int /*<<< orphan*/  _COMM_PAGE64_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * sharedpage_pmap ; 

vm_map_address_t
FUNC9(
		       void
)
{
	kern_return_t   kr;
	pmap_paddr_t    pa = 0;


	(void) FUNC7(&pa, PAGE_SIZE, 0);

	FUNC3((char *) FUNC4(pa), 0, PAGE_SIZE);

#ifdef CONFIG_XNUPOST
	/*
	 * The kernel pmap maintains a user accessible mapping of the commpage
	 * to test PAN.
	 */
	kr = pmap_enter(kernel_pmap, _COMM_HIGH_PAGE64_BASE_ADDRESS, (ppnum_t)atop(pa), VM_PROT_READ, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, TRUE);
	assert(kr == KERN_SUCCESS);

	/*
	 * This mapping should not be global (as we only expect to reference it
	 * during testing).
	 */
	pmap_update_tt3e(kernel_pmap, _COMM_HIGH_PAGE64_BASE_ADDRESS, PMAP_COMM_PAGE_PTE_TEMPLATE | ARM_PTE_NG);

#if KASAN
	kasan_map_shadow(_COMM_HIGH_PAGE64_BASE_ADDRESS, PAGE_SIZE, true);
#endif
#endif /* CONFIG_XNUPOST */

	/*
	 * In order to avoid burning extra pages on mapping the shared page, we
	 * create a dedicated pmap for the shared page.  We forcibly nest the
	 * translation tables from this pmap into other pmaps.  The level we
	 * will nest at depends on the MMU configuration (page size, TTBR range,
	 * etc).
	 *
	 * Note that this is NOT "the nested pmap" (which is used to nest the
	 * shared cache).
	 *
	 * Note that we update parameters of the entry for our unique needs (NG
	 * entry, etc.).
	 */
	sharedpage_pmap = FUNC5(NULL, 0x0, FALSE);
	FUNC0(sharedpage_pmap != NULL);

	/* The user 64-bit mapping... */
	kr = FUNC6(sharedpage_pmap, _COMM_PAGE64_BASE_ADDRESS, (ppnum_t)FUNC1(pa), VM_PROT_READ, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, TRUE);
	FUNC0(kr == KERN_SUCCESS);
	FUNC8(sharedpage_pmap, _COMM_PAGE64_BASE_ADDRESS, PMAP_COMM_PAGE_PTE_TEMPLATE);

	/* ...and the user 32-bit mapping. */
	kr = FUNC6(sharedpage_pmap, _COMM_PAGE32_BASE_ADDRESS, (ppnum_t)FUNC1(pa), VM_PROT_READ, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, TRUE);
	FUNC0(kr == KERN_SUCCESS);
	FUNC8(sharedpage_pmap, _COMM_PAGE32_BASE_ADDRESS, PMAP_COMM_PAGE_PTE_TEMPLATE);

	/* For manipulation in kernel, go straight to physical page */
	return ((vm_map_address_t)FUNC4(pa));
}