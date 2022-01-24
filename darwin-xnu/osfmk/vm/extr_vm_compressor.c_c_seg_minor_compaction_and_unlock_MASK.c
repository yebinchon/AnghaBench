#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_2__* c_slot_t ;
typedef  TYPE_3__* c_slot_mapping_t ;
typedef  TYPE_4__* c_segment_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_19__ {int /*<<< orphan*/ * c_buffer; } ;
struct TYPE_22__ {scalar_t__ c_bytes_used; int c_firstemptyslot; int c_nextslot; size_t c_populated_offset; size_t c_nextoffset; int /*<<< orphan*/  c_lock; TYPE_1__ c_store; scalar_t__ c_bytes_unused; int /*<<< orphan*/  c_was_minor_compacted; int /*<<< orphan*/  c_busy; } ;
struct TYPE_21__ {int s_cindx; } ;
struct TYPE_20__ {size_t c_offset; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 size_t C_SEG_OFFSET_ALIGNMENT_MASK ; 
 size_t FUNC2 (size_t) ; 
 TYPE_2__* FUNC3 (TYPE_4__*,int) ; 
 size_t FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KMA_COMPRESSOR ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t PAGE_SIZE ; 
 scalar_t__ TRUE ; 
 size_t FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  compressor_map ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int
FUNC18(c_segment_t c_seg, boolean_t clear_busy)
{
	c_slot_mapping_t slot_ptr;
	uint32_t	c_offset = 0;
	uint32_t	old_populated_offset;
	uint32_t	c_rounded_size;
	uint32_t	c_size;
	int		c_indx = 0;
	int		i;
	c_slot_t	c_dst;
	c_slot_t	c_src;

	FUNC10(c_seg->c_busy);

#if VALIDATE_C_SEGMENTS
	c_seg_validate(c_seg, FALSE);
#endif
	if (c_seg->c_bytes_used == 0) {
		FUNC11(c_seg);
		return (1);
	}
	FUNC16(&c_seg->c_lock);

	if (c_seg->c_firstemptyslot >= c_seg->c_nextslot || FUNC4(c_seg) < PAGE_SIZE)
		goto done;

/* TODO: assert first emptyslot's c_size is actually 0 */

#if DEVELOPMENT || DEBUG
	C_SEG_MAKE_WRITEABLE(c_seg);
#endif

#if VALIDATE_C_SEGMENTS
	c_seg->c_was_minor_compacted++;
#endif
	c_indx = c_seg->c_firstemptyslot;
	c_dst = FUNC3(c_seg, c_indx);
	
	old_populated_offset = c_seg->c_populated_offset;
	c_offset = c_dst->c_offset;

	for (i = c_indx + 1; i < c_seg->c_nextslot && c_offset < c_seg->c_nextoffset; i++) {

		c_src = FUNC3(c_seg, i);

		c_size = FUNC9(c_src);

		if (c_size == 0)
			continue;

		c_rounded_size = (c_size + C_SEG_OFFSET_ALIGNMENT_MASK) & ~C_SEG_OFFSET_ALIGNMENT_MASK;
/* N.B.: This memcpy may be an overlapping copy */
		FUNC17(&c_seg->c_store.c_buffer[c_offset], &c_seg->c_store.c_buffer[c_src->c_offset], c_rounded_size);

		FUNC13(c_dst, c_src);
		c_dst->c_offset = c_offset;

		slot_ptr = (c_slot_mapping_t)FUNC7(c_dst);
		slot_ptr->s_cindx = c_indx;

		c_offset += FUNC0(c_rounded_size);
		FUNC8(c_src, 0);
		c_indx++;

		c_dst = FUNC3(c_seg, c_indx);
	}
	c_seg->c_firstemptyslot = c_indx;
	c_seg->c_nextslot = c_indx;
	c_seg->c_nextoffset = c_offset;
	c_seg->c_populated_offset = (c_offset + (FUNC0(PAGE_SIZE) - 1)) & ~(FUNC0(PAGE_SIZE) - 1);
	c_seg->c_bytes_unused = 0;

#if VALIDATE_C_SEGMENTS
	c_seg_validate(c_seg, TRUE);
#endif
	if (old_populated_offset > c_seg->c_populated_offset) {
		uint32_t	gc_size;
		int32_t		*gc_ptr;

		gc_size = FUNC2(old_populated_offset - c_seg->c_populated_offset);
		gc_ptr = &c_seg->c_store.c_buffer[c_seg->c_populated_offset];

		FUNC14(compressor_map, (vm_offset_t)gc_ptr, gc_size, KMA_COMPRESSOR);
	}

#if DEVELOPMENT || DEBUG
	C_SEG_WRITE_PROTECT(c_seg);
#endif

done:
	if (clear_busy == TRUE) {
		FUNC15(&c_seg->c_lock);
		FUNC5(c_seg);
		FUNC16(&c_seg->c_lock);
	}
	return (0);
}