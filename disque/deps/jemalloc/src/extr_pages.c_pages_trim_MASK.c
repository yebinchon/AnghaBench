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
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 

void *
FUNC3(void *addr, size_t alloc_size, size_t leadsize, size_t size)
{
	void *ret = (void *)((uintptr_t)addr + leadsize);

	FUNC0(alloc_size >= leadsize + size);
#ifdef _WIN32
	{
		void *new_addr;

		pages_unmap(addr, alloc_size);
		new_addr = pages_map(ret, size);
		if (new_addr == ret)
			return (ret);
		if (new_addr)
			pages_unmap(new_addr, size);
		return (NULL);
	}
#else
	{
		size_t trailsize = alloc_size - leadsize - size;

		if (leadsize != 0)
			FUNC2(addr, leadsize);
		if (trailsize != 0)
			FUNC2((void *)((uintptr_t)ret + size), trailsize);
		return (ret);
	}
#endif
}