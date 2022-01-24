#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ uint64_t ;
struct c_slot {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_2__* c_segment_t ;
struct TYPE_11__ {int c_segno; } ;
struct TYPE_9__ {scalar_t__ c_swap_handle; int /*<<< orphan*/ * c_buffer; } ;
struct TYPE_10__ {int c_busy; scalar_t__ c_slots_used; scalar_t__ c_overage_swap; int c_mysegno; int c_slot_var_array_len; int /*<<< orphan*/  c_slot_var_array; int /*<<< orphan*/  c_lock; TYPE_1__ c_store; int /*<<< orphan*/  c_populated_offset; int /*<<< orphan*/  c_busy_swapping; int /*<<< orphan*/  c_on_minorcompact_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_IS_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KMA_COMPRESSOR ; 
 int PAGE_SIZE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int c_free_segno_head ; 
 int /*<<< orphan*/ * c_list_lock ; 
 int /*<<< orphan*/  c_overage_swapped_count ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  c_segment_count ; 
 TYPE_4__* c_segments ; 
 int /*<<< orphan*/  compressor_map ; 
 int /*<<< orphan*/  compressor_segment_zone ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_compressor_lck_grp ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC13(c_segment_t c_seg)
{
	int		segno;
	int		pages_populated = 0;
	int32_t		*c_buffer = NULL;
	uint64_t	c_swap_handle = 0;

	FUNC3(c_seg->c_busy);
	FUNC3(c_seg->c_slots_used == 0);
	FUNC3(!c_seg->c_on_minorcompact_q);
	FUNC3(!c_seg->c_busy_swapping);

	if (c_seg->c_overage_swap == TRUE) {
		c_overage_swapped_count--;
		c_seg->c_overage_swap = FALSE;
	}	
	if ( !(FUNC0(c_seg)))
		c_buffer = c_seg->c_store.c_buffer;
	else
		c_swap_handle = c_seg->c_store.c_swap_handle;

	FUNC4(c_seg, C_IS_FREE, FALSE);

	FUNC9(c_list_lock);

	if (c_buffer) {
		pages_populated = (FUNC10(FUNC1(c_seg->c_populated_offset))) / PAGE_SIZE;
		c_seg->c_store.c_buffer = NULL;
	} else
		c_seg->c_store.c_swap_handle = (uint64_t)-1;

	FUNC9(&c_seg->c_lock);

	if (c_buffer) {
		if (pages_populated)
			FUNC5(compressor_map, (vm_offset_t) c_buffer, pages_populated * PAGE_SIZE, KMA_COMPRESSOR);

	} else if (c_swap_handle) {
                /*
                 * Free swap space on disk.
		 */
		FUNC11(c_swap_handle);
	}
	FUNC8(&c_seg->c_lock);
	/*
	 * c_seg must remain busy until
	 * after the call to vm_swap_free
	 */
	FUNC2(c_seg);
	FUNC9(&c_seg->c_lock);

	segno = c_seg->c_mysegno;

	FUNC8(c_list_lock);
	/*
	 * because the c_buffer is now associated with the segno,
	 * we can't put the segno back on the free list until
	 * after we have depopulated the c_buffer range, or 
	 * we run the risk of depopulating a range that is 
	 * now being used in one of the compressor heads
	 */
	c_segments[segno].c_segno = c_free_segno_head;
	c_free_segno_head = segno;
	c_segment_count--;

	FUNC9(c_list_lock);

	FUNC7(&c_seg->c_lock, &vm_compressor_lck_grp);

	if (c_seg->c_slot_var_array_len)
		FUNC6(c_seg->c_slot_var_array, sizeof(struct c_slot) * c_seg->c_slot_var_array_len);

	FUNC12(compressor_segment_zone, c_seg);
}