#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  TYPE_2__* c_slot_t ;
typedef  TYPE_3__* c_slot_mapping_t ;
typedef  TYPE_4__* c_segment_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_22__ {int moved_bytes; int /*<<< orphan*/  moved_slots; int /*<<< orphan*/  compactions; } ;
struct TYPE_18__ {int /*<<< orphan*/ * c_buffer; } ;
struct TYPE_21__ {int c_nextslot; size_t c_populated_offset; size_t c_nextoffset; int c_firstemptyslot; int c_slots_used; int c_bytes_used; int c_bytes_unused; scalar_t__ c_mysegno; TYPE_1__ c_store; int /*<<< orphan*/  c_was_major_donor; int /*<<< orphan*/  c_was_major_compacted; } ;
struct TYPE_20__ {int /*<<< orphan*/  s_cindx; scalar_t__ s_cseg; } ;
struct TYPE_19__ {size_t c_offset; } ;

/* Variables and functions */
 scalar_t__ C_SEG_BUFSIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int C_SEG_MAX_POPULATE_SIZE ; 
 int C_SEG_OFFSET_ALIGNMENT_MASK ; 
 scalar_t__ FUNC2 (size_t) ; 
 size_t C_SEG_OFF_LIMIT ; 
 TYPE_2__* FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int C_SLOT_MAX_INDEX ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KMA_COMPRESSOR ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_COMPRESSOR ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 TYPE_7__ c_seg_major_compact_stats ; 
 int /*<<< orphan*/  compressor_map ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

boolean_t
FUNC14(
	c_segment_t c_seg_dst,
	c_segment_t c_seg_src)
{
	c_slot_mapping_t slot_ptr;
	uint32_t	c_rounded_size;
	uint32_t	c_size;
	uint16_t	dst_slot;
	int		i;
	c_slot_t	c_dst;
	c_slot_t	c_src;
	boolean_t	keep_compacting = TRUE;
	
	/*
	 * segments are not locked but they are both marked c_busy
	 * which keeps c_decompress from working on them...
	 * we can safely allocate new pages, move compressed data
	 * from c_seg_src to c_seg_dst and update both c_segment's
	 * state w/o holding the master lock
	 */
#if DEVELOPMENT || DEBUG
	C_SEG_MAKE_WRITEABLE(c_seg_dst);
#endif

#if VALIDATE_C_SEGMENTS
	c_seg_dst->c_was_major_compacted++;
	c_seg_src->c_was_major_donor++;
#endif
	c_seg_major_compact_stats.compactions++;

	dst_slot = c_seg_dst->c_nextslot;

	for (i = 0; i < c_seg_src->c_nextslot; i++) {

		c_src = FUNC3(c_seg_src, i);

		c_size = FUNC8(c_src);

		if (c_size == 0) {
			/* BATCH: move what we have so far; */
			continue;
		}

		if (FUNC2(c_seg_dst->c_populated_offset - c_seg_dst->c_nextoffset) < (unsigned) c_size) {
			int	size_to_populate;

			/* doesn't fit */
			size_to_populate = C_SEG_BUFSIZE - FUNC2(c_seg_dst->c_populated_offset);

		    	if (size_to_populate == 0) {
				/* can't fit */
				keep_compacting = FALSE;
				break;
			}
			if (size_to_populate > C_SEG_MAX_POPULATE_SIZE)
				size_to_populate = C_SEG_MAX_POPULATE_SIZE;

			FUNC12(compressor_map,
					       (vm_offset_t) &c_seg_dst->c_store.c_buffer[c_seg_dst->c_populated_offset],
					       size_to_populate,
					       KMA_COMPRESSOR, 
					       VM_KERN_MEMORY_COMPRESSOR);

			c_seg_dst->c_populated_offset += FUNC0(size_to_populate);
			FUNC9(FUNC2(c_seg_dst->c_populated_offset) <= C_SEG_BUFSIZE);
		}
		FUNC10(c_seg_dst);

		c_dst = FUNC3(c_seg_dst, c_seg_dst->c_nextslot);

		FUNC13(&c_seg_dst->c_store.c_buffer[c_seg_dst->c_nextoffset], &c_seg_src->c_store.c_buffer[c_src->c_offset], c_size);

		c_rounded_size = (c_size + C_SEG_OFFSET_ALIGNMENT_MASK) & ~C_SEG_OFFSET_ALIGNMENT_MASK;

		c_seg_major_compact_stats.moved_slots++;
		c_seg_major_compact_stats.moved_bytes += c_size;

		FUNC11(c_dst, c_src);
		c_dst->c_offset = c_seg_dst->c_nextoffset;

		if (c_seg_dst->c_firstemptyslot == c_seg_dst->c_nextslot)
			c_seg_dst->c_firstemptyslot++;
		c_seg_dst->c_slots_used++;
		c_seg_dst->c_nextslot++;
		c_seg_dst->c_bytes_used += c_rounded_size;
		c_seg_dst->c_nextoffset += FUNC0(c_rounded_size);

		FUNC6(c_src, 0);

		c_seg_src->c_bytes_used -= c_rounded_size;
		c_seg_src->c_bytes_unused += c_rounded_size;
		c_seg_src->c_firstemptyslot = 0;

		FUNC9(c_seg_src->c_slots_used);
		c_seg_src->c_slots_used--;

		if (c_seg_dst->c_nextoffset >= C_SEG_OFF_LIMIT || c_seg_dst->c_nextslot >= C_SLOT_MAX_INDEX) {
			/* dest segment is now full */
			keep_compacting = FALSE;
			break;
		}
	}
#if DEVELOPMENT || DEBUG
	C_SEG_WRITE_PROTECT(c_seg_dst);
#endif
	if (dst_slot < c_seg_dst->c_nextslot) {

		FUNC7(TRUE);
		/*
		 * we've now locked out c_decompress from 
		 * converting the slot passed into it into
		 * a c_segment_t which allows us to use 
		 * the backptr to change which c_segment and
		 * index the slot points to
		 */
		while (dst_slot < c_seg_dst->c_nextslot) {

			c_dst = FUNC3(c_seg_dst, dst_slot);
			
			slot_ptr = (c_slot_mapping_t)FUNC5(c_dst);
			/* <csegno=0,indx=0> would mean "empty slot", so use csegno+1 */
			slot_ptr->s_cseg = c_seg_dst->c_mysegno + 1;
			slot_ptr->s_cindx = dst_slot++;
		}
		FUNC7(FALSE);
	}
	return (keep_compacting);
}