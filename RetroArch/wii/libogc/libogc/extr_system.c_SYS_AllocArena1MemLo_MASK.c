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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void* FUNC2(u32 size,u32 align)
{
	u32 mem1lo;
	void *ptr = NULL;

	mem1lo = (u32)FUNC0();
	ptr = (void*)((mem1lo+(align-1))&~(align-1));
	mem1lo = ((((u32)ptr+size+align)-1)&~(align-1));
	FUNC1((void*)mem1lo);

	return ptr;
}