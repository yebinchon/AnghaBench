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
typedef  TYPE_1__* c_slot_mapping_t ;
struct TYPE_3__ {scalar_t__ s_cseg; int /*<<< orphan*/  s_cindx; } ;

/* Variables and functions */
 int C_DONT_BLOCK ; 
 scalar_t__ C_SV_CSEG_ID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  c_segment_pages_compressed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(int *slot, int flags)
{
	c_slot_mapping_t  slot_ptr;
	int	zeroslot = 1;
	int	retval;

	FUNC1(flags == 0 || flags == C_DONT_BLOCK);

	slot_ptr = (c_slot_mapping_t)slot;

	if (slot_ptr->s_cseg == C_SV_CSEG_ID) {

		FUNC3(slot_ptr->s_cindx);
		FUNC0(-1, &c_segment_pages_compressed);

		*slot = 0;
		return (0);
	}
	retval = FUNC2(NULL, slot_ptr, flags, &zeroslot);
	/*
	 * returns 0 if we successfully freed the specified compressed page
	 * returns -2 if (flags & C_DONT_BLOCK) and we found 'c_busy' set
	 */

	if (retval == 0)
		*slot = 0;
	else
		FUNC1(retval == -2);

	return (retval);
}