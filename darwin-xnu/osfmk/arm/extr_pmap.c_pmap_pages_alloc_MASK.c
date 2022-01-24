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
typedef  scalar_t__ vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  scalar_t__ pmap_paddr_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 unsigned int PMAP_PAGES_ALLOCATE_NOWAIT ; 
 unsigned int PMAP_PAGES_RECLAIM_NOWAIT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_PTE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  alloc_pmap_pages_count ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned int,scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ gPhysBase ; 
 int /*<<< orphan*/  inuse_pmap_pages_count ; 
 int /*<<< orphan*/  pmap_object ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC17(
	pmap_paddr_t	*pa,
	unsigned		size,
	unsigned		option)
{
	vm_page_t       m = VM_PAGE_NULL, m_prev;

	if(option & PMAP_PAGES_RECLAIM_NOWAIT) {
		FUNC6(size == PAGE_SIZE);
		*pa = FUNC8();
		return KERN_SUCCESS;
	}
	if (size == PAGE_SIZE) {
		while ((m = FUNC12()) == VM_PAGE_NULL) {
			if(option & PMAP_PAGES_ALLOCATE_NOWAIT) {
				return KERN_RESOURCE_SHORTAGE;
			}

			FUNC5();
		}
		FUNC14();
		FUNC16(m, VM_KERN_MEMORY_PTE, TRUE);
		FUNC15();
	}
	if (size == 2*PAGE_SIZE) {
		while (FUNC7(size, &m, 0, 1, TRUE, 0) != KERN_SUCCESS) {
			if(option & PMAP_PAGES_ALLOCATE_NOWAIT)
				return KERN_RESOURCE_SHORTAGE;

			FUNC5();
		}
	}

	*pa = (pmap_paddr_t)FUNC9(FUNC4(m));

	FUNC10(pmap_object);
	while (m != VM_PAGE_NULL) {
		FUNC13(m, pmap_object, (vm_object_offset_t) ((FUNC9(FUNC4(m))) - gPhysBase), VM_KERN_MEMORY_PTE);
		m_prev = m;
		m = FUNC0(m_prev);
		*(FUNC1(m_prev)) = VM_PAGE_NULL;
	}
	FUNC11(pmap_object);

	FUNC2(size>>PAGE_SHIFT, &inuse_pmap_pages_count);
	FUNC3(size>>PAGE_SHIFT, &alloc_pmap_pages_count);

	return KERN_SUCCESS;
}