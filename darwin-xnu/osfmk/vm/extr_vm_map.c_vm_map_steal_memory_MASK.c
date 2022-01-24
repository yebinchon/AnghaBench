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
typedef  int uint32_t ;
struct _vm_map {int dummy; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 () ; 
 void* kentry_data ; 
 int kentry_data_size ; 
 void* map_data ; 
 int map_data_size ; 
 void* map_holes_data ; 
 int map_holes_data_size ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int) ; 

void
FUNC3(
	void)
{
	uint32_t kentry_initial_pages;

	map_data_size = FUNC2(10 * sizeof(struct _vm_map));
	map_data = FUNC1(map_data_size);

	/*
	 * kentry_initial_pages corresponds to the number of kernel map entries
	 * required during bootstrap until the asynchronous replenishment
	 * scheme is activated and/or entries are available from the general
	 * map entry pool.
	 */
#if	defined(__LP64__)
	kentry_initial_pages = 10;
#else
	kentry_initial_pages = 6;
#endif

#if CONFIG_GZALLOC
	/* If using the guard allocator, reserve more memory for the kernel
	 * reserved map entry pool.
	*/
	if (gzalloc_enabled())
		kentry_initial_pages *= 1024;
#endif

	kentry_data_size = kentry_initial_pages * PAGE_SIZE;
	kentry_data = FUNC1(kentry_data_size);

	map_holes_data_size = kentry_data_size;
	map_holes_data = FUNC1(map_holes_data_size);
}