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
typedef  int vm_size_t ;
typedef  int uint32_t ;
typedef  scalar_t__ addr64_t ;

/* Variables and functions */
 int NBPG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(
	   addr64_t src64,
	   addr64_t dst64,
	   vm_size_t bytes)
{
	/* Not necessary for K64 - but ensure we stay within a page */
	if (((((uint32_t)src64 & (NBPG-1)) + bytes) > NBPG) ||
            ((((uint32_t)dst64 & (NBPG-1)) + bytes) > NBPG) ) {
	        FUNC2("bcopy_phys alignment");
	}
	FUNC1(FUNC0(src64), FUNC0(dst64), bytes);
}