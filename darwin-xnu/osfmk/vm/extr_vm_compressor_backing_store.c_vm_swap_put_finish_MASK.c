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
typedef  int /*<<< orphan*/  uint64_t ;
struct swapfile {scalar_t__ swp_io_count; int swp_flags; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int SWAP_WANTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swap_put_failures ; 

kern_return_t
FUNC4(struct swapfile *swf, uint64_t *f_offset, int error)
{
	FUNC0(&vm_swap_data_lock);

	swf->swp_io_count--;

	if ((swf->swp_flags & SWAP_WANTED) && swf->swp_io_count == 0) {
	
		swf->swp_flags &= ~SWAP_WANTED;
		FUNC2((event_t) &swf->swp_flags);
	}
	FUNC1(&vm_swap_data_lock);

	if (error) {
		FUNC3(*f_offset);
		vm_swap_put_failures++;

		return KERN_FAILURE;
	}
	return KERN_SUCCESS;
}