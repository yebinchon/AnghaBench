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
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  TYPE_1__* compressor_pager_t ;
struct TYPE_3__ {scalar_t__ cpgr_num_slots_occupied; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

unsigned int
FUNC2(
	memory_object_t mem_obj)
{
	compressor_pager_t	pager;

	FUNC1(mem_obj, pager);
	if (pager == NULL)
		return 0;

	/*
	 * The caller should have the VM object locked and one
	 * needs that lock to do a page-in or page-out, so no
	 * need to lock the pager here.
	 */
	FUNC0(pager->cpgr_num_slots_occupied >= 0);

	return pager->cpgr_num_slots_occupied;
}