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
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ index_ptr; scalar_t__ buffer; } ;

/* Variables and functions */
 scalar_t__ ENTROPY_BUFFER_SIZE ; 
 TYPE_1__ EntropyData ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ master_cpu ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 

void
FUNC4(void)
{
	uint32_t	tsc_lo, tsc_hi;
	uint32_t	*ep;

	FUNC0(FUNC1() == master_cpu);

	/* update buffer pointer cyclically */
	if (EntropyData.index_ptr - EntropyData.buffer == ENTROPY_BUFFER_SIZE)
		ep = EntropyData.index_ptr = EntropyData.buffer;
	else
		ep = EntropyData.index_ptr++;

	FUNC2(tsc_lo, tsc_hi);
	*ep = FUNC3(*ep, 9) ^ tsc_lo;
}