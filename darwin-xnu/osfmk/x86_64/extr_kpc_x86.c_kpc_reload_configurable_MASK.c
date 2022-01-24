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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IA32_PERFEVTSEL_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC5(int ctr)
{
	uint64_t cfg = FUNC1(ctr);

	/* counters must be disabled before they can be written to */
	uint64_t old = FUNC2(ctr);
	FUNC3(ctr, cfg & ~IA32_PERFEVTSEL_EN);
	FUNC4(ctr, FUNC0(ctr));
	FUNC3(ctr, cfg);
	return old;
}