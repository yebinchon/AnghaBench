#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  scalar_t__ clock_sec_t ;
typedef  int /*<<< orphan*/  clock_nsec_t ;
typedef  TYPE_2__* c_segment_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/ * c_buffer; } ;
struct TYPE_12__ {size_t c_populated_offset; size_t c_nextoffset; size_t c_creation_ts; int c_state; scalar_t__ c_generation_id; int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_busy; TYPE_1__ c_store; } ;

/* Variables and functions */
 int C_ON_AGE_Q ; 
 int C_ON_SWAPOUT_Q ; 
 int C_SEG_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KMA_COMPRESSOR ; 
 scalar_t__ PAGE_SIZE ; 
 int PAGE_SIZE_64 ; 
 scalar_t__ TRUE ; 
 scalar_t__ VM_CONFIG_FREEZER_SWAP_IS_ACTIVE ; 
 scalar_t__ VM_CONFIG_SWAP_IS_PRESENT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int c_freezer_swapout_page_count ; 
 int /*<<< orphan*/  c_generation_id ; 
 int /*<<< orphan*/ * c_list_lock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  c_swapout_list_head ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compressor_map ; 
 int /*<<< orphan*/  freezer_chead ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (int) ; 
 scalar_t__ vm_darkwake_mode ; 

__attribute__((used)) static void
FUNC16(c_segment_t c_seg, c_segment_t *current_chead)
{
	uint32_t	unused_bytes;
	uint32_t	offset_to_depopulate;
	int		new_state = C_ON_AGE_Q;
	clock_sec_t	sec;
	clock_nsec_t	nsec;
	boolean_t	head_insert = FALSE;

	unused_bytes = FUNC15(FUNC2(c_seg->c_populated_offset - c_seg->c_nextoffset));

#ifndef _OPEN_SOURCE
	/* TODO: The HW codec can generate, lazily, a '2nd page not mapped'
	 * exception. So on such a platform, or platforms where we're confident
	 * the codec does not require a buffer page to absorb trailing writes,
	 * we can create an unmapped hole at the tail of the segment, rather
	 * than a populated mapping. This will also guarantee that the codec
	 * does not overwrite valid data past the edge of the segment and
	 * thus eliminate the depopulation overhead.
	 */
#endif
	if (unused_bytes) {
		offset_to_depopulate = FUNC1(FUNC13(FUNC2(c_seg->c_nextoffset)));

		/*
		 *  release the extra physical page(s) at the end of the segment
		 */
		FUNC12(&c_seg->c_lock);

		FUNC10(
			compressor_map,
			(vm_offset_t) &c_seg->c_store.c_buffer[offset_to_depopulate],
			unused_bytes,
			KMA_COMPRESSOR);

		FUNC11(&c_seg->c_lock);

		c_seg->c_populated_offset = offset_to_depopulate;
	}
	FUNC6(FUNC2(c_seg->c_populated_offset) <= C_SEG_BUFSIZE);

#if DEVELOPMENT || DEBUG
	{
	boolean_t	c_seg_was_busy = FALSE;

	if ( !c_seg->c_busy)
		C_SEG_BUSY(c_seg);
	else
		c_seg_was_busy = TRUE;

	lck_mtx_unlock_always(&c_seg->c_lock);

	C_SEG_WRITE_PROTECT(c_seg);

	lck_mtx_lock_spin_always(&c_seg->c_lock);

	if (c_seg_was_busy == FALSE)
		C_SEG_WAKEUP_DONE(c_seg);
	}
#endif

#if CONFIG_FREEZE
	if (current_chead == (c_segment_t*)&freezer_chead &&
	    VM_CONFIG_SWAP_IS_PRESENT &&
	    VM_CONFIG_FREEZER_SWAP_IS_ACTIVE) {
		new_state = C_ON_SWAPOUT_Q;
	}
#endif /* CONFIG_FREEZE */

	if (vm_darkwake_mode == TRUE) {
		new_state = C_ON_SWAPOUT_Q;
		head_insert = TRUE;
	}

	FUNC9(&sec, &nsec);
	c_seg->c_creation_ts = (uint32_t)sec;

	FUNC11(c_list_lock);

	c_seg->c_generation_id = c_generation_id++;
	FUNC8(c_seg, new_state, head_insert);

#if CONFIG_FREEZE
	if (c_seg->c_state == C_ON_SWAPOUT_Q) {
		/*
		 * darkwake and freezer can't co-exist together
		 * We'll need to fix this accounting as a start.
		 */
		assert(vm_darkwake_mode == FALSE);
		c_freezer_swapout_page_count += (C_SEG_OFFSET_TO_BYTES(c_seg->c_populated_offset)) / PAGE_SIZE_64;
	}
#endif /* CONFIG_FREEZE */

	if (c_seg->c_state == C_ON_AGE_Q && FUNC3(c_seg) >= PAGE_SIZE)
		FUNC7(c_seg, TRUE);

	FUNC12(c_list_lock);

	if (c_seg->c_state == C_ON_SWAPOUT_Q)
		FUNC14((event_t)&c_swapout_list_head);

	*current_chead = NULL;
}