#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* apple_protect_pager_t ;
struct TYPE_4__ {scalar_t__ is_mapped; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  PAGER_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int apple_protect_pager_count ; 
 int apple_protect_pager_count_mapped ; 
 int apple_protect_pager_count_unmapped_max ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apple_protect_pager_lock ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC5(
	memory_object_t		mem_obj)
{
	apple_protect_pager_t	pager;
	int			count_unmapped;

	FUNC0(PAGER_ALL,
		    ("apple_protect_pager_last_unmap: %p\n", mem_obj));

	pager = FUNC2(mem_obj);

	FUNC3(&apple_protect_pager_lock);
	if (pager->is_mapped) {
		/*
		 * All the mappings are gone, so let go of the one extra
		 * reference that represents all the mappings of this pager.
		 */
		apple_protect_pager_count_mapped--;
		count_unmapped = (apple_protect_pager_count -
				  apple_protect_pager_count_mapped);
		if (count_unmapped > apple_protect_pager_count_unmapped_max) {
			apple_protect_pager_count_unmapped_max = count_unmapped;
		}
		pager->is_mapped = FALSE;
		FUNC1(pager, TRUE);
		/* caution: deallocate_internal() released the lock ! */
	} else {
		FUNC4(&apple_protect_pager_lock);
	}
	
	return KERN_SUCCESS;
}