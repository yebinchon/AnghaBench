#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  TYPE_1__* c_slot_t ;
typedef  TYPE_2__* c_segment_t ;
struct TYPE_8__ {scalar_t__ c_bytes_used; scalar_t__ c_nextslot; int c_populated_offset; int c_nextoffset; scalar_t__ c_firstemptyslot; } ;
struct TYPE_7__ {int c_offset; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int C_SEG_OFFSET_ALIGNMENT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,scalar_t__) ; 
 int PAGE_SIZE ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int c_seg_trim_page_count ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(c_segment_t c_seg)
{
	c_slot_t	cs;
	uint32_t	c_size;
	uint32_t	c_offset;
	uint32_t	c_rounded_size;
	uint16_t	current_nextslot;
	uint32_t	current_populated_offset;

	if (c_seg->c_bytes_used == 0)
		return;
	current_nextslot = c_seg->c_nextslot;
	current_populated_offset = c_seg->c_populated_offset;
		
	while (c_seg->c_nextslot) {

		cs = FUNC2(c_seg, (c_seg->c_nextslot - 1));

		c_size = FUNC3(cs);

		if (c_size) {
			if (current_nextslot != c_seg->c_nextslot) {
				c_rounded_size = (c_size + C_SEG_OFFSET_ALIGNMENT_MASK) & ~C_SEG_OFFSET_ALIGNMENT_MASK;
				c_offset = cs->c_offset + FUNC0(c_rounded_size);

				c_seg->c_nextoffset = c_offset;
				c_seg->c_populated_offset = (c_offset + (FUNC0(PAGE_SIZE) - 1)) &
				                                       ~(FUNC0(PAGE_SIZE) - 1);

				if (c_seg->c_firstemptyslot > c_seg->c_nextslot)
					c_seg->c_firstemptyslot = c_seg->c_nextslot;
#if DEVELOPMENT || DEBUG
				c_seg_trim_page_count += ((round_page_32(C_SEG_OFFSET_TO_BYTES(current_populated_offset)) -
							   round_page_32(C_SEG_OFFSET_TO_BYTES(c_seg->c_populated_offset))) /
							  PAGE_SIZE);
#endif
			}
			break;
		}		
		c_seg->c_nextslot--;
	}
	FUNC4(c_seg->c_nextslot);
}