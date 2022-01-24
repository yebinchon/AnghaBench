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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct swapout_io_completion {int swp_c_size; int /*<<< orphan*/  swp_upl_ctx; scalar_t__ swp_io_done; scalar_t__ swp_io_error; struct swapfile* swp_swf; TYPE_1__* swp_c_seg; } ;
struct swapfile {unsigned int swp_free_hint; int swp_flags; unsigned int swp_nseginuse; unsigned int swp_nsegs; int* swp_bitmap; int swp_index; int /*<<< orphan*/  swp_vp; int /*<<< orphan*/  swp_queue; TYPE_1__** swp_csegs; int /*<<< orphan*/  swp_io_count; } ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  clock_sec_t ;
typedef  int /*<<< orphan*/  clock_nsec_t ;
typedef  TYPE_1__* c_segment_t ;
typedef  int boolean_t ;
struct TYPE_3__ {int c_busy_swapping; int c_busy; int /*<<< orphan*/  c_on_minorcompact_q; } ;

/* Variables and functions */
 unsigned int COMPRESSED_SWAP_CHUNK_SIZE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int NSEC_PER_USEC ; 
 int PAGE_SIZE_64 ; 
 int SWAP_DEVICE_SHIFT ; 
 int SWAP_READY ; 
 int /*<<< orphan*/  SWAP_WRITE ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_INTERRUPTIBLE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ hibernate_flushing ; 
 int hibernate_no_swapspace ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swf_global_queue ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_num_swap_files ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  vm_swap_put_failures ; 
 int /*<<< orphan*/  FUNC11 (struct swapfile*,int*,int) ; 
 int /*<<< orphan*/  vm_swapfile_create_needed ; 
 int /*<<< orphan*/  vm_swapfile_create_thread_running ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  vm_swapfile_total_segs_used ; 

kern_return_t
FUNC13(vm_offset_t addr, uint64_t *f_offset, uint32_t size, c_segment_t c_seg, struct swapout_io_completion *soc)
{
	unsigned int	segidx = 0;
	struct swapfile *swf = NULL;
	uint64_t	file_offset = 0;
	uint64_t	swapfile_index = 0;
	unsigned int 	byte_for_segidx = 0;
	unsigned int 	offset_within_byte = 0;
	boolean_t	swf_eligible = FALSE;
	boolean_t	waiting = FALSE;
	boolean_t	retried = FALSE;
	int		error = 0;
	clock_sec_t	sec;
	clock_nsec_t	nsec;
	void            *upl_ctx = NULL;

	if (addr == 0 || f_offset == NULL) {
		return KERN_FAILURE;
	}
retry:
	FUNC4(&vm_swap_data_lock);

	swf = (struct swapfile*) FUNC7(&swf_global_queue);

	while(FUNC6(&swf_global_queue, (queue_entry_t)swf) == FALSE) {
	
		segidx = swf->swp_free_hint;

		swf_eligible = 	(swf->swp_flags & SWAP_READY) && (swf->swp_nseginuse < swf->swp_nsegs);

		if (swf_eligible) {

			while(segidx < swf->swp_nsegs) {
				
				byte_for_segidx = segidx >> 3;
				offset_within_byte = segidx % 8;
			
				if ((swf->swp_bitmap)[byte_for_segidx] & (1 << offset_within_byte)) {
					segidx++;
					continue;
				}
		
				(swf->swp_bitmap)[byte_for_segidx] |= (1 << offset_within_byte);

				file_offset = segidx * COMPRESSED_SWAP_CHUNK_SIZE;
				swf->swp_nseginuse++;
				swf->swp_io_count++;
				swf->swp_csegs[segidx] = c_seg;

				swapfile_index = swf->swp_index;
				vm_swapfile_total_segs_used++;

				FUNC3(&sec, &nsec);

				if (FUNC0(sec) && !vm_swapfile_create_thread_running)
					FUNC10((event_t) &vm_swapfile_create_needed);

				FUNC5(&vm_swap_data_lock);
		
				goto issue_io;
			}
		}
		swf = (struct swapfile*) FUNC8(&swf->swp_queue);
	}
	FUNC1(FUNC6(&swf_global_queue, (queue_entry_t) swf));
	
	/*
	 * we've run out of swap segments, but may not
	 * be in a position to immediately create a new swap
	 * file if we've recently failed to create due to a lack
	 * of free space in the root filesystem... we'll try
	 * to kick that create off, but in any event we're going
	 * to take a breather (up to 1 second) so that we're not caught in a tight
	 * loop back in "vm_compressor_compact_and_swap" trying to stuff
	 * segments into swap files only to have them immediately put back
	 * on the c_age queue due to vm_swap_put failing.
	 *
	 * if we're doing these puts due to a hibernation flush,
	 * no need to block... setting hibernate_no_swapspace to TRUE,
	 * will cause "vm_compressor_compact_and_swap" to immediately abort
	 */
	FUNC3(&sec, &nsec);

	if (FUNC0(sec) && !vm_swapfile_create_thread_running)
		FUNC10((event_t) &vm_swapfile_create_needed);

	if (hibernate_flushing == FALSE || FUNC0(sec)) {
		waiting = TRUE;
		FUNC2((event_t) &vm_num_swap_files, THREAD_INTERRUPTIBLE, 1000, 1000*NSEC_PER_USEC);
	} else
		hibernate_no_swapspace = TRUE;

	FUNC5(&vm_swap_data_lock);

	if (waiting == TRUE) {
		FUNC9(THREAD_CONTINUE_NULL);

		if (retried == FALSE && hibernate_flushing == TRUE) {
			retried = TRUE;
			goto retry;
		}
	}
	vm_swap_put_failures++;

	return KERN_FAILURE;

issue_io:	
	FUNC1(c_seg->c_busy_swapping);
	FUNC1(c_seg->c_busy);
	FUNC1(!c_seg->c_on_minorcompact_q);

	*f_offset = (swapfile_index << SWAP_DEVICE_SHIFT) | file_offset;

	if (soc) {
		soc->swp_c_seg = c_seg;
		soc->swp_c_size = size;

	        soc->swp_swf = swf;

		soc->swp_io_error = 0;
		soc->swp_io_done = 0;

		upl_ctx = (void *)&soc->swp_upl_ctx;
	}
	error = FUNC12(swf->swp_vp, file_offset, addr, (int) (size / PAGE_SIZE_64), SWAP_WRITE, upl_ctx);

	if (error || upl_ctx == NULL)
		return (FUNC11(swf, f_offset, error));

	return KERN_SUCCESS;
}