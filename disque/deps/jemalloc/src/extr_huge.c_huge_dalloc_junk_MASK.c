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
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ config_fill ; 
 int /*<<< orphan*/  config_munmap ; 
 scalar_t__ have_dss ; 
 int /*<<< orphan*/  FUNC1 (void*,int,size_t) ; 
 int /*<<< orphan*/  opt_junk_free ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *ptr, size_t usize)
{

	if (config_fill && have_dss && FUNC2(opt_junk_free)) {
		/*
		 * Only bother junk filling if the chunk isn't about to be
		 * unmapped.
		 */
		if (!config_munmap || (have_dss && FUNC0(ptr)))
			FUNC1(ptr, 0x5a, usize);
	}
}