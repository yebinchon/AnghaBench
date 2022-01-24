#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
typedef  unsigned int addr64_t ;
struct TYPE_2__ {unsigned int cache_linesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(addr64_t addr, unsigned count, int phys)
{
	if (phys) {
		FUNC2(addr, count);
	}
	else {
		uint64_t  linesize = FUNC1()->cache_linesize;
		addr64_t  bound = (addr + count + linesize -1) & ~(linesize - 1);
		FUNC3();
		while (addr < bound) {
			FUNC0((void *) (uintptr_t) addr);
			addr += linesize;
		}
		FUNC3();
	}
}