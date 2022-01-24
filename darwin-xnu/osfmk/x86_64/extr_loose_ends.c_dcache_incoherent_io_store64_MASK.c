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
typedef  unsigned int addr64_t ;
struct TYPE_2__ {unsigned int cache_linesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(addr64_t pa, unsigned int count)
{
	addr64_t  linesize = FUNC2()->cache_linesize;
	addr64_t  bound = (pa + count + linesize - 1) & ~(linesize - 1);

	FUNC3();

	while (pa < bound) {
		FUNC1(FUNC0(pa));
		pa += linesize;
	}

	FUNC3();
}