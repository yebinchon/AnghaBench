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
struct malloc_header {unsigned long size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned long) ; 

void* FUNC3(void* ptr,size_t nsize)
{
	if (ptr==0){
		return FUNC1(nsize);
	}
	else if (nsize==0)
		return ptr;
		
	struct malloc_header *bl=ptr-sizeof(struct malloc_header);
	unsigned long size=bl->size;
	void *newptr=FUNC1(size+nsize);
	FUNC2(newptr,ptr,size);
	FUNC0(ptr);
	return newptr;
}