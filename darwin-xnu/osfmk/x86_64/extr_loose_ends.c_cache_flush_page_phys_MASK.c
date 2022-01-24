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
typedef  int /*<<< orphan*/  ppnum_t ;
struct TYPE_4__ {int cache_linesize; } ;
typedef  TYPE_1__ i386_cpu_info_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 

void
FUNC7(ppnum_t pa)
{
	boolean_t	istate;
	unsigned char	*cacheline_addr;
	i386_cpu_info_t	*cpuid_infop = FUNC2();
	int		cacheline_size;
	int		cachelines_to_flush;

	cacheline_size = cpuid_infop->cache_linesize;
	if (cacheline_size == 0)
		FUNC6("cacheline_size=0 cpuid_infop=%p\n", cpuid_infop);
	cachelines_to_flush = PAGE_SIZE/cacheline_size;

	FUNC4();

	istate = FUNC5(FALSE);

	for (cacheline_addr = (unsigned char *)FUNC0(FUNC3(pa));
	     cachelines_to_flush > 0;
	     cachelines_to_flush--, cacheline_addr += cacheline_size) {
		FUNC1((void *) cacheline_addr);
	}

	(void) FUNC5(istate);

	FUNC4();
}