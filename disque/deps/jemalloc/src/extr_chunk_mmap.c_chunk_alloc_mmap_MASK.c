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
 size_t FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (size_t,size_t,int*,int*) ; 
 size_t chunksize_mask ; 
 int FUNC3 (void*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 

void *
FUNC6(size_t size, size_t alignment, bool *zero, bool *commit)
{
	void *ret;
	size_t offset;

	/*
	 * Ideally, there would be a way to specify alignment to mmap() (like
	 * NetBSD has), but in the absence of such a feature, we have to work
	 * hard to efficiently create aligned mappings.  The reliable, but
	 * slow method is to create a mapping that is over-sized, then trim the
	 * excess.  However, that always results in one or two calls to
	 * pages_unmap().
	 *
	 * Optimistically try mapping precisely the right amount before falling
	 * back to the slow method, with the expectation that the optimistic
	 * approach works most of the time.
	 */

	FUNC1(alignment != 0);
	FUNC1((alignment & chunksize_mask) == 0);

	ret = FUNC4(NULL, size);
	if (ret == NULL)
		return (NULL);
	offset = FUNC0(ret, alignment);
	if (offset != 0) {
		FUNC5(ret, size);
		return (FUNC2(size, alignment, zero, commit));
	}

	FUNC1(ret != NULL);
	*zero = true;
	if (!*commit)
		*commit = FUNC3(ret, size);
	return (ret);
}