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
 uintptr_t FUNC0 (uintptr_t,size_t) ; 
 size_t PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC4 (void*,size_t,size_t,size_t) ; 

__attribute__((used)) static void *
FUNC5(size_t size, size_t alignment, bool *zero, bool *commit)
{
	void *ret;
	size_t alloc_size;

	alloc_size = size + alignment - PAGE;
	/* Beware size_t wrap-around. */
	if (alloc_size < size)
		return (NULL);
	do {
		void *pages;
		size_t leadsize;
		pages = FUNC3(NULL, alloc_size);
		if (pages == NULL)
			return (NULL);
		leadsize = FUNC0((uintptr_t)pages, alignment) -
		    (uintptr_t)pages;
		ret = FUNC4(pages, alloc_size, leadsize, size);
	} while (ret == NULL);

	FUNC1(ret != NULL);
	*zero = true;
	if (!*commit)
		*commit = FUNC2(ret, size);
	return (ret);
}