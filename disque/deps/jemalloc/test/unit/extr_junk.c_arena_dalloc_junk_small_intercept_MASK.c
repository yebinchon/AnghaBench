#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t reg_size; } ;
typedef  TYPE_1__ arena_bin_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char,int,char*,size_t,size_t) ; 
 int saw_junking ; 
 void* watch_for_junking ; 

__attribute__((used)) static void
FUNC2(void *ptr, arena_bin_info_t *bin_info)
{
	size_t i;

	FUNC0(ptr, bin_info);
	for (i = 0; i < bin_info->reg_size; i++) {
		FUNC1(((char *)ptr)[i], 0x5a,
		    "Missing junk fill for byte %zu/%zu of deallocated region",
		    i, bin_info->reg_size);
	}
	if (ptr == watch_for_junking)
		saw_junking = true;
}