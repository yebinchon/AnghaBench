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
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  scalar_t__ memory_object_offset_t ;
typedef  scalar_t__ memory_object_cluster_size_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  compressor_pager_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

kern_return_t
FUNC4(
	memory_object_t		mem_obj,
	memory_object_offset_t	offset,
	memory_object_cluster_size_t		size)
{
	compressor_pager_t	pager;
	memory_object_offset_t	cur_offset;

	FUNC1(mem_obj, pager);
	FUNC0(pager);

	for (cur_offset = offset;
	     cur_offset < offset + size;
	     cur_offset += PAGE_SIZE) {
		FUNC3("do a data_return() if slot for this page is empty");
	}

	FUNC2(pager);

	return KERN_SUCCESS;
}