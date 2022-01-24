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
typedef  int uint64_t ;
struct swapfile {int swp_flags; scalar_t__ swp_io_count; int /*<<< orphan*/  swp_vp; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  TYPE_2__* c_segment_t ;
struct TYPE_6__ {scalar_t__ c_buffer; } ;
struct TYPE_7__ {TYPE_1__ c_store; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE_64 ; 
 int /*<<< orphan*/  SWAP_READ ; 
 int SWAP_READY ; 
 int SWAP_RECLAIM ; 
 int SWAP_SLOT_MASK ; 
 int SWAP_WANTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swapins ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  vm_swap_get_failures ; 
 struct swapfile* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC10(c_segment_t c_seg, uint64_t f_offset, uint64_t size)
{
	struct swapfile *swf = NULL;
	uint64_t	file_offset = 0;
	int		retval = 0;

	FUNC3(c_seg->c_store.c_buffer);

	FUNC4(&vm_swap_data_lock);

	swf = FUNC8(f_offset);

	if (swf == NULL || ( !(swf->swp_flags & SWAP_READY) && !(swf->swp_flags & SWAP_RECLAIM))) {
		retval = 1;
		goto done;
	}
	swf->swp_io_count++;

	FUNC5(&vm_swap_data_lock);

#if DEVELOPMENT || DEBUG
	C_SEG_MAKE_WRITEABLE(c_seg);
#endif
	file_offset = (f_offset & SWAP_SLOT_MASK);
	retval = FUNC9(swf->swp_vp, file_offset, (uint64_t)c_seg->c_store.c_buffer, (int)(size / PAGE_SIZE_64), SWAP_READ, NULL);

#if DEVELOPMENT || DEBUG
	C_SEG_WRITE_PROTECT(c_seg);
#endif
	if (retval == 0)
		FUNC2(swapins, size >> PAGE_SHIFT);
	else
		vm_swap_get_failures++;

	/*
	 * Free this slot in the swap structure.
	 */
	FUNC7(f_offset);

	FUNC4(&vm_swap_data_lock);
	swf->swp_io_count--;

	if ((swf->swp_flags & SWAP_WANTED) && swf->swp_io_count == 0) {
	
		swf->swp_flags &= ~SWAP_WANTED;
		FUNC6((event_t) &swf->swp_flags);
	}
done:
	FUNC5(&vm_swap_data_lock);

	if (retval == 0)
		return KERN_SUCCESS;
	else
		return KERN_FAILURE;
}