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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 

kern_return_t
FUNC4()
{
	uint64_t * data_ptr;
	size_t alloc_size;

	FUNC1("Running kalloc test.\n");

	alloc_size = sizeof(uint64_t);
	data_ptr = FUNC2(alloc_size);
	FUNC0(data_ptr, "kalloc sizeof(uint64_t) return not null");
	FUNC3(data_ptr, alloc_size);

	alloc_size = 3544;
	data_ptr = FUNC2(alloc_size);
	FUNC0(data_ptr, "kalloc 3544 return not null");
	FUNC3(data_ptr, alloc_size);

	return KERN_SUCCESS;
}