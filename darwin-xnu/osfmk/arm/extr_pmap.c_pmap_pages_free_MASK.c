#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_page_t ;
typedef  scalar_t__ pmap_paddr_t ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef  TYPE_1__ page_free_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ VM_PAGE_NULL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ gPhysBase ; 
 int /*<<< orphan*/  inuse_pmap_pages_count ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_object ; 
 int /*<<< orphan*/  pmap_pages_lock ; 
 TYPE_1__* pmap_pages_reclaim_list ; 
 scalar_t__ pmap_pages_request_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(
	pmap_paddr_t	pa,
	unsigned	size)
{
	FUNC4(&pmap_pages_lock);

	if (pmap_pages_request_count != 0) {
		page_free_entry_t	*page_entry;

		pmap_pages_request_count--;
		page_entry = (page_free_entry_t *)FUNC3(pa);
		page_entry->next = pmap_pages_reclaim_list;
		pmap_pages_reclaim_list = page_entry;
		FUNC5(&pmap_pages_lock);

		return;
	}

	FUNC5(&pmap_pages_lock);

	vm_page_t       m;
	pmap_paddr_t	pa_max;

	FUNC0(-(size>>PAGE_SHIFT), &inuse_pmap_pages_count);

	for (pa_max = pa + size; pa < pa_max; pa = pa + PAGE_SIZE) {
		FUNC6(pmap_object);
		m = FUNC10(pmap_object, (pa - gPhysBase));
		FUNC2(m != VM_PAGE_NULL);
		FUNC2(FUNC1(m));
		FUNC9();
		FUNC8(m);
		FUNC11();
		FUNC7(pmap_object);
	}
}