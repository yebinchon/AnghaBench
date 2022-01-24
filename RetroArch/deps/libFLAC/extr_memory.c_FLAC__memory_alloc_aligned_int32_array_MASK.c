#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FLAC__int32 ;
typedef  int FLAC__bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,void**) ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

FLAC__bool FUNC3(size_t elements, FLAC__int32 **unaligned_pointer, FLAC__int32 **aligned_pointer)
{
	FLAC__int32 *pu; /* unaligned pointer */
	union { /* union needed to comply with C99 pointer aliasing rules */
		FLAC__int32 *pa; /* aligned pointer */
		void        *pv; /* aligned pointer alias */
	} u;

	FUNC0(elements > 0);
	FUNC0(0 != unaligned_pointer);
	FUNC0(0 != aligned_pointer);
	FUNC0(unaligned_pointer != aligned_pointer);

	if(elements > SIZE_MAX / sizeof(*pu)) /* overflow check */
		return false;

	pu = (FLAC__int32*)FUNC1(sizeof(*pu) * elements, &u.pv);
	if(0 == pu) {
		return false;
	}
	else {
		if(*unaligned_pointer != 0)
			FUNC2(*unaligned_pointer);
		*unaligned_pointer = pu;
		*aligned_pointer = u.pa;
		return true;
	}
}