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
typedef  int /*<<< orphan*/  vm_allocation_site_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 void* FUNC2 (size_t,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 size_t FUNC5 (size_t) ; 
 size_t FUNC6 (void*) ; 

void *
FUNC7(
	void		*addr,
	size_t		size,
	int		type,
	int		flags,
	vm_allocation_site_t *site)
{
	void		*newaddr;
	size_t		alloc;

	/* realloc(NULL, ...) is equivalent to malloc(...) */
	if (addr == NULL)
		return (FUNC2(size, type, flags, site));

	alloc = FUNC6(addr);
	/* 
	 * Find out the size of the bucket in which the new sized allocation 
	 * would land. If it matches the bucket of the original allocation, 
	 * simply return the address.
	 */
	if (FUNC5(size) == alloc) {
		if (flags & M_ZERO) { 
			if (alloc < size)
				FUNC4(addr + alloc, (size - alloc));
			else
				FUNC4(addr + size, (alloc - size));
		}
		return addr;
	}

	/* Allocate a new, bigger (or smaller) block */
	if ((newaddr = FUNC2(size, type, flags, site)) == NULL)
		return (NULL);

	/* Copy over original contents */
	FUNC3(addr, newaddr, FUNC0(size, alloc));
	FUNC1(addr, type);

	return (newaddr);
}