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
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 void* FUNC3 (void*,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 

void *FUNC6(void *ptr, size_t oldsize, size_t newsize)
{
#ifdef __linux__
	void *ret = FUNC4(ptr, oldsize, newsize, 0);
	if (ret == MAP_FAILED)
		return NULL;

	return ret;
#else
	void *tmp, *ret;
	size_t preserve_size;
	
	preserve_size = oldsize;
	if (preserve_size > newsize)
		preserve_size = newsize;
	tmp = malloc(preserve_size);
	if (tmp == NULL)
		return NULL;
	memcpy(tmp, ptr, preserve_size);

	munmap(ptr, oldsize);
	ret = mmap(ptr, newsize, PROT_READ | PROT_WRITE,
		   MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	if (ret == MAP_FAILED) {
		free(tmp);
		return NULL;
	}
	memcpy(ret, tmp, preserve_size);
	free(tmp);
	return ret;
#endif
}