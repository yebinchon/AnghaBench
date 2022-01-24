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

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t chunksize ; 
 scalar_t__ FUNC2 (void*,size_t,size_t,int) ; 
 int FUNC3 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t,size_t,size_t,int) ; 
 size_t FUNC5 (size_t) ; 

bool
FUNC6(void *ptr, size_t oldsize, size_t usize_min,
    size_t usize_max, bool zero)
{

	FUNC1(FUNC5(oldsize) == oldsize);

	/* Both allocations must be huge to avoid a move. */
	if (oldsize < chunksize || usize_max < chunksize)
		return (true);

	if (FUNC0(usize_max) > FUNC0(oldsize)) {
		/* Attempt to expand the allocation in-place. */
		if (!FUNC2(ptr, oldsize, usize_max, zero))
			return (false);
		/* Try again, this time with usize_min. */
		if (usize_min < usize_max && FUNC0(usize_min) >
		    FUNC0(oldsize) && FUNC2(ptr,
		    oldsize, usize_min, zero))
			return (false);
	}

	/*
	 * Avoid moving the allocation if the existing chunk size accommodates
	 * the new size.
	 */
	if (FUNC0(oldsize) >= FUNC0(usize_min)
	    && FUNC0(oldsize) <= FUNC0(usize_max)) {
		FUNC4(ptr, oldsize, usize_min, usize_max,
		    zero);
		return (false);
	}

	/* Attempt to shrink the allocation in-place. */
	if (FUNC0(oldsize) > FUNC0(usize_max))
		return (FUNC3(ptr, oldsize, usize_max));
	return (true);
}