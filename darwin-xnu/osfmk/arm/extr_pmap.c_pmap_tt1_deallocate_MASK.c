#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ tt_free_entry_t ;
typedef  int /*<<< orphan*/  tt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FREE_PAGE_SIZE_TT_MAX ; 
 scalar_t__ FREE_TWO_PAGE_SIZE_TT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int PMAP_ROOT_ALLOC_SIZE ; 
 unsigned int PMAP_TT_DEALLOCATE_NOBLOCK ; 
 scalar_t__ free_page_size_tt_count ; 
 TYPE_1__* free_page_size_tt_list ; 
 scalar_t__ free_page_size_tt_max ; 
 scalar_t__ free_tt_count ; 
 TYPE_1__* free_tt_list ; 
 scalar_t__ free_tt_max ; 
 scalar_t__ free_two_page_size_tt_count ; 
 TYPE_1__* free_two_page_size_tt_list ; 
 scalar_t__ free_two_page_size_tt_max ; 
 int /*<<< orphan*/  inuse_kernel_tteroot_count ; 
 int /*<<< orphan*/  inuse_user_tteroot_count ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ not_in_kdp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  pmaps_lock ; 

__attribute__((used)) static void
FUNC6(
	pmap_t pmap,
	tt_entry_t *tt,
	vm_size_t size,
	unsigned option)
{
	tt_free_entry_t	*tt_entry;

	tt_entry = (tt_free_entry_t *)tt;
	if (not_in_kdp)
		FUNC3(&pmaps_lock);

	if (size <  PAGE_SIZE) {
		free_tt_count++;
		if (free_tt_count > free_tt_max)
			free_tt_max = free_tt_count;
		tt_entry->next = free_tt_list;
		free_tt_list = tt_entry;
	}

	if (size == PAGE_SIZE) {
		free_page_size_tt_count++;
		if (free_page_size_tt_count > free_page_size_tt_max)
			free_page_size_tt_max = free_page_size_tt_count;
		tt_entry->next = free_page_size_tt_list;
		free_page_size_tt_list = tt_entry;
	}

	if (size == 2*PAGE_SIZE) {
		free_two_page_size_tt_count++;
		if (free_two_page_size_tt_count > free_two_page_size_tt_max)
			free_two_page_size_tt_max = free_two_page_size_tt_count;
		tt_entry->next = free_two_page_size_tt_list;
		free_two_page_size_tt_list = tt_entry;
	}

	if ((option & PMAP_TT_DEALLOCATE_NOBLOCK) || (!not_in_kdp)) {
		if (not_in_kdp)
			FUNC4(&pmaps_lock);
		FUNC5(pmap, size);
		return;
	}

	while (free_page_size_tt_count > FREE_PAGE_SIZE_TT_MAX) {

		free_page_size_tt_count--;
		tt = (tt_entry_t *)free_page_size_tt_list;
		free_page_size_tt_list = ((tt_free_entry_t *)tt)->next;

		FUNC4(&pmaps_lock);

		FUNC2(FUNC1((vm_offset_t)tt), PAGE_SIZE);

		FUNC0(-(int32_t)(PAGE_SIZE / PMAP_ROOT_ALLOC_SIZE), (pmap == kernel_pmap ? &inuse_kernel_tteroot_count : &inuse_user_tteroot_count));

		FUNC3(&pmaps_lock);
	}

	while (free_two_page_size_tt_count > FREE_TWO_PAGE_SIZE_TT_MAX) {
		free_two_page_size_tt_count--;
		tt = (tt_entry_t *)free_two_page_size_tt_list;
		free_two_page_size_tt_list = ((tt_free_entry_t *)tt)->next;

		FUNC4(&pmaps_lock);

		FUNC2(FUNC1((vm_offset_t)tt), 2*PAGE_SIZE);

		FUNC0(-2 * (int32_t)(PAGE_SIZE / PMAP_ROOT_ALLOC_SIZE), (pmap == kernel_pmap ? &inuse_kernel_tteroot_count : &inuse_user_tteroot_count));

		FUNC3(&pmaps_lock);
	}
	FUNC4(&pmaps_lock);
	FUNC5(pmap, size);
}