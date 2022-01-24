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
struct trim_list {int tl_offset; struct trim_list* tl_next; } ;
struct swapfile {int* swp_bitmap; unsigned int swp_free_hint; int /*<<< orphan*/  swp_nseginuse; int /*<<< orphan*/ ** swp_csegs; int /*<<< orphan*/  swp_vp; scalar_t__ swp_delayed_trim_count; struct trim_list* swp_delayed_trim_list_head; } ;

/* Variables and functions */
 int COMPRESSED_SWAP_CHUNK_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct trim_list*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  vm_swapfile_total_segs_used ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct trim_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct swapfile *swf)
{
	struct trim_list *tl, *tl_head;

	FUNC1(&vm_swap_data_lock);

	tl_head = swf->swp_delayed_trim_list_head;
	swf->swp_delayed_trim_list_head = NULL;
	swf->swp_delayed_trim_count = 0;

	FUNC2(&vm_swap_data_lock);

	FUNC3(swf->swp_vp, tl_head, TRUE);
	
	while ((tl = tl_head) != NULL) {
		unsigned int	segidx = 0;
		unsigned int	byte_for_segidx = 0;
		unsigned int	offset_within_byte = 0;

		FUNC1(&vm_swap_data_lock);

		segidx = (unsigned int) (tl->tl_offset / COMPRESSED_SWAP_CHUNK_SIZE);
			
		byte_for_segidx = segidx >> 3;
		offset_within_byte = segidx % 8;

		if ((swf->swp_bitmap)[byte_for_segidx] & (1 << offset_within_byte)) {
				
			(swf->swp_bitmap)[byte_for_segidx] &= ~(1 << offset_within_byte);
			
			swf->swp_csegs[segidx] = NULL;

			swf->swp_nseginuse--;
			vm_swapfile_total_segs_used--;

			if (segidx < swf->swp_free_hint) {
				swf->swp_free_hint = segidx;
			}
		}
		FUNC2(&vm_swap_data_lock);

		tl_head = tl->tl_next;

		FUNC0(tl, sizeof(struct trim_list));
	}		
}