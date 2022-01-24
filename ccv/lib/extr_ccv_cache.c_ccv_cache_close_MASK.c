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
typedef  int /*<<< orphan*/  ccv_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(ccv_cache_t* cache)
{
	// for radix-tree based cache, close/cleanup are the same (it is not the same for cuckoo based one,
	// because for cuckoo based one, it will free up space in close whereas only cleanup space in cleanup
	FUNC0(cache);
}