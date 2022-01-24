#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int nlevels; size_t nbits; TYPE_1__* levels; } ;
typedef  TYPE_2__ bitmap_info_t ;
struct TYPE_4__ {scalar_t__ group_offset; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 scalar_t__ BITMAP_GROUPS_MAX ; 
 unsigned int BITMAP_MAX_LEVELS ; 
 size_t LG_BITMAP_MAXBITS ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(bitmap_info_t *binfo, size_t nbits)
{
	unsigned i;
	size_t group_count;

	FUNC2(nbits > 0);
	FUNC2(nbits <= (FUNC1(1) << LG_BITMAP_MAXBITS));

	/*
	 * Compute the number of groups necessary to store nbits bits, and
	 * progressively work upward through the levels until reaching a level
	 * that requires only one group.
	 */
	binfo->levels[0].group_offset = 0;
	group_count = FUNC0(nbits);
	for (i = 1; group_count > 1; i++) {
		FUNC2(i < BITMAP_MAX_LEVELS);
		binfo->levels[i].group_offset = binfo->levels[i-1].group_offset
		    + group_count;
		group_count = FUNC0(group_count);
	}
	binfo->levels[i].group_offset = binfo->levels[i-1].group_offset
	    + group_count;
	FUNC2(binfo->levels[i].group_offset <= BITMAP_GROUPS_MAX);
	binfo->nlevels = i;
	binfo->nbits = nbits;
}