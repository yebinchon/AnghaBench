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
 int /*<<< orphan*/  MEMSIZE ; 
 scalar_t__ SOFT_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  memblock ; 
 int /*<<< orphan*/  memblock_share ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ test_type ; 

__attribute__((used)) static void FUNC2(void)
{
	if (test_type == SOFT_FAULT) {
		T_QUIET; FUNC0(FUNC1(memblock_share, MEMSIZE), "munmap");
	}
	T_QUIET; FUNC0(FUNC1(memblock, MEMSIZE), "munmap");
}