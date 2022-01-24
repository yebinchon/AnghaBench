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
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1(unsigned int c)
{
#ifdef __arm__
	__asm__ volatile(
		"mcr p14, 0, %0, c0, c5\n"
		:
		:"r"(c));
#else
	/* ARM64_TODO */
	(void)c;
	FUNC0();
#endif
}