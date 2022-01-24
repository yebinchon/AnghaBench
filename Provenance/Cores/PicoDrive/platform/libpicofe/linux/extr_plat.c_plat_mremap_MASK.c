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
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MREMAP_MAYMOVE ; 
 void* FUNC0 (void*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,void*) ; 

void *FUNC2(void *ptr, size_t oldsize, size_t newsize)
{
	void *ret;

	ret = FUNC0(ptr, oldsize, newsize, MREMAP_MAYMOVE);
	if (ret == MAP_FAILED)
		return NULL;
	if (ret != ptr)
		FUNC1("warning: mremap moved: %p -> %p\n", ptr, ret);

	return ret;
}