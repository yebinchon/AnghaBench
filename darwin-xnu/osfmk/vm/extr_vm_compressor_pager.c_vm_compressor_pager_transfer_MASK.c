#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  int memory_object_offset_t ;
typedef  scalar_t__ compressor_slot_t ;
typedef  TYPE_1__* compressor_pager_t ;
struct TYPE_6__ {int /*<<< orphan*/  transfer; } ;
struct TYPE_5__ {int cpgr_num_slots; int /*<<< orphan*/  cpgr_num_slots_occupied; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,scalar_t__**) ; 
 TYPE_2__ compressor_pager_stats ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 

void
FUNC5(
	memory_object_t		dst_mem_obj,
	memory_object_offset_t	dst_offset,
	memory_object_t		src_mem_obj,
	memory_object_offset_t	src_offset)
{
	compressor_pager_t	src_pager, dst_pager;
	compressor_slot_t	*src_slot_p, *dst_slot_p;
	
	compressor_pager_stats.transfer++;

	/* find the compressor slot for the destination */
	FUNC1((uint32_t) dst_offset == dst_offset);
	FUNC2(dst_mem_obj, dst_pager);
	FUNC1(dst_offset / PAGE_SIZE < dst_pager->cpgr_num_slots);
	FUNC3(dst_pager, TRUE, (uint32_t) dst_offset,
				     &dst_slot_p);
	FUNC1(dst_slot_p != NULL);
	FUNC1(*dst_slot_p == 0);

	/* find the compressor slot for the source */
	FUNC1((uint32_t) src_offset == src_offset);
	FUNC2(src_mem_obj, src_pager);
	FUNC1(src_offset / PAGE_SIZE < src_pager->cpgr_num_slots);
	FUNC3(src_pager, FALSE, (uint32_t) src_offset,
				     &src_slot_p);
	FUNC1(src_slot_p != NULL);
	FUNC1(*src_slot_p != 0);

	/* transfer the slot from source to destination */
	FUNC4(dst_slot_p, src_slot_p);
	FUNC0(-1, &src_pager->cpgr_num_slots_occupied);
	FUNC0(+1, &dst_pager->cpgr_num_slots_occupied);
}