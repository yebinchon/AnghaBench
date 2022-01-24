#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_2__* c_segment_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/ * c_buffer; int /*<<< orphan*/  c_swap_handle; } ;
struct TYPE_13__ {int c_busy_swapping; scalar_t__ cseg_swap_size; scalar_t__ cseg_hash; int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_bytes_used; TYPE_1__ c_store; int /*<<< orphan*/  c_mysegno; int /*<<< orphan*/  c_populated_offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  KMA_COMPRESSOR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_COMPRESSOR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  compressor_bytes_used ; 
 int /*<<< orphan*/  compressor_map ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC21 (char*,int) ; 

int
FUNC22(c_segment_t c_seg, boolean_t force_minor_compaction, boolean_t age_on_swapin_q)
{
	vm_offset_t	addr = 0;
	uint32_t	io_size = 0;
	uint64_t	f_offset;

	FUNC7(FUNC2(c_seg));
	
#if !CHECKSUM_THE_SWAP
	FUNC10(c_seg);
#endif
	io_size = FUNC17(FUNC3(c_seg->c_populated_offset));
	f_offset = c_seg->c_store.c_swap_handle;

	FUNC1(c_seg);
	c_seg->c_busy_swapping = 1;

	/*
	 * This thread is likely going to block for I/O.
	 * Make sure it is ready to run when the I/O completes because
	 * it needs to clear the busy bit on the c_seg so that other
	 * waiting threads can make progress too. To do that, boost
	 * the rwlock_count so that the priority is boosted.
	 */
	FUNC18();
	FUNC15(&c_seg->c_lock);

	FUNC6(FALSE);

	addr = (vm_offset_t)FUNC0(c_seg->c_mysegno);
	c_seg->c_store.c_buffer = (int32_t*) addr;

	FUNC13(compressor_map, addr, io_size, KMA_COMPRESSOR, VM_KERN_MEMORY_COMPRESSOR);

	if (FUNC20(c_seg, f_offset, io_size) != KERN_SUCCESS) {
		FUNC6(TRUE);

		FUNC12(compressor_map, addr, io_size, KMA_COMPRESSOR);

		FUNC9(c_seg, FALSE, TRUE, age_on_swapin_q);
	} else {
#if ENCRYPTED_SWAP
		vm_swap_decrypt(c_seg);
#endif /* ENCRYPTED_SWAP */

#if CHECKSUM_THE_SWAP
		if (c_seg->cseg_swap_size != io_size)
			panic("swapin size doesn't match swapout size");

		if (c_seg->cseg_hash != vmc_hash((char*) c_seg->c_store.c_buffer, (int)io_size)) {
			panic("c_seg_swapin - Swap hash mismatch\n");
		}
#endif /* CHECKSUM_THE_SWAP */

		FUNC6(TRUE);

		FUNC9(c_seg, TRUE, force_minor_compaction == TRUE ? FALSE : TRUE, age_on_swapin_q);

		FUNC5(c_seg->c_bytes_used, &compressor_bytes_used);

		if (force_minor_compaction == TRUE) {
			if (FUNC8(c_seg, FALSE)) {
				/*
				 * c_seg was completely empty so it was freed,
				 * so be careful not to reference it again
				 *
				 * Drop the rwlock_count so that the thread priority
				 * is returned back to where it is supposed to be.
				 */
				FUNC11();
				return (1);
			}

			FUNC14(&c_seg->c_lock);
		}
	}
	FUNC4(c_seg);

	/*
	 * Drop the rwlock_count so that the thread priority
	 * is returned back to where it is supposed to be.
	 */
	FUNC11();

	return (0);
}