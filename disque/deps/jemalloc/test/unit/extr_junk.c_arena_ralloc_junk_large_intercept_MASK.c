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
 int /*<<< orphan*/  FUNC0 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  large_maxclass ; 
 void* most_recently_trimmed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *ptr, size_t old_usize, size_t usize)
{

	FUNC0(ptr, old_usize, usize);
	FUNC1(old_usize, large_maxclass, "Unexpected old_usize");
	FUNC1(usize, FUNC2(large_maxclass), "Unexpected usize");
	most_recently_trimmed = ptr;
}