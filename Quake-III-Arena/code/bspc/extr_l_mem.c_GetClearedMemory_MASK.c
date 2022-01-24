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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  allocedmemory ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

void *FUNC4(int size)
{
	void *ptr;

	ptr = (void *) FUNC2(size);
	if (!ptr) FUNC0("out of memory");
	FUNC3(ptr, 0, size);
	allocedmemory += FUNC1(ptr);
	return ptr;
}