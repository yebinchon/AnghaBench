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
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 size_t PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void*,size_t) ; 

bool
FUNC3(arena_t *arena, void *chunk, size_t offset, size_t length)
{

	FUNC1(chunk != NULL);
	FUNC1(FUNC0(chunk) == chunk);
	FUNC1((offset & PAGE_MASK) == 0);
	FUNC1(length != 0);
	FUNC1((length & PAGE_MASK) == 0);

	return (FUNC2((void *)((uintptr_t)chunk + (uintptr_t)offset),
	    length));
}