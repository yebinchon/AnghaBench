#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* c_slot_t ;
typedef  TYPE_2__* c_slot_mapping_t ;
typedef  TYPE_3__* c_segment_t ;
struct TYPE_12__ {TYPE_3__* c_seg; } ;
struct TYPE_11__ {int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_busy_swapping; scalar_t__ c_busy; } ;
struct TYPE_10__ {int s_cseg; int s_cindx; } ;
struct TYPE_9__ {int /*<<< orphan*/  c_packed_ptr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int C_SV_CSEG_ID ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_4__* c_segments ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(
	int	*dst_slot_p,
	int	*src_slot_p)
{
	c_slot_mapping_t	dst_slot, src_slot;
	c_segment_t		c_seg;
	int			c_indx;
	c_slot_t		cs;

	src_slot = (c_slot_mapping_t) src_slot_p;

	if (src_slot->s_cseg == C_SV_CSEG_ID) {
		*dst_slot_p = *src_slot_p;
		*src_slot_p = 0;
		return;
	}
	dst_slot = (c_slot_mapping_t) dst_slot_p;
Retry:
	FUNC2(TRUE);
	/* get segment for src_slot */
	c_seg = c_segments[src_slot->s_cseg -1].c_seg;
	/* lock segment */
	FUNC4(&c_seg->c_lock);
	/* wait if it's busy */
	if (c_seg->c_busy && !c_seg->c_busy_swapping) {
		FUNC2(FALSE);
		FUNC3(c_seg);
		goto Retry;
	}
	/* find the c_slot */
	c_indx = src_slot->s_cindx;
	cs = FUNC0(c_seg, c_indx);
	/* point the c_slot back to dst_slot instead of src_slot */
	cs->c_packed_ptr = FUNC1(dst_slot);
	/* transfer */
	*dst_slot_p = *src_slot_p;
	*src_slot_p = 0;
	FUNC5(&c_seg->c_lock);
	FUNC2(FALSE);
}