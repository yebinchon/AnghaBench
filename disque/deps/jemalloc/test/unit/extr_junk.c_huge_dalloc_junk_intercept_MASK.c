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
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int saw_junking ; 
 void* watch_for_junking ; 

__attribute__((used)) static void
FUNC1(void *ptr, size_t usize)
{

	FUNC0(ptr, usize);
	/*
	 * The conditions under which junk filling actually occurs are nuanced
	 * enough that it doesn't make sense to duplicate the decision logic in
	 * test code, so don't actually check that the region is junk-filled.
	 */
	if (ptr == watch_for_junking)
		saw_junking = true;
}