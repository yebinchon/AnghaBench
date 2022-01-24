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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_DIAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  sysctl_lock ; 

__attribute__((used)) static uint64_t *
FUNC4(uint32_t *size_out)
{
	static uint64_t *bigarray = NULL;

	FUNC0(&sysctl_lock, LCK_MTX_ASSERT_OWNED);

	uint32_t size = FUNC3() + sizeof(uint64_t);
	*size_out = size;

	if (bigarray) {
		return bigarray;
	}

	/*
	 * Another element is needed to hold the CPU number when getting counter
	 * values.
	 */
	bigarray = FUNC2(size, VM_KERN_MEMORY_DIAG);
	FUNC1(bigarray != NULL);
	return bigarray;
}