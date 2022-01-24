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

/* Variables and functions */
 int CPUID_FEATURE_RDRAND ; 
 int CPUID_LEAF7_FEATURE_RDSEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 size_t FUNC3 (void*,size_t) ; 
 size_t FUNC4 (void*,size_t) ; 

__attribute__((used)) static void
FUNC5(void * buf, size_t * nbytes)
{
	size_t nwords;

	/* only handle complete words */
	FUNC0(*nbytes % sizeof(uint64_t) == 0);

	nwords = (*nbytes) / sizeof(uint64_t);
	if (FUNC2() & CPUID_LEAF7_FEATURE_RDSEED) {
		nwords  = FUNC4(buf, nwords);
		*nbytes = nwords * sizeof(uint64_t);
	} else if (FUNC1() & CPUID_FEATURE_RDRAND) {
		nwords  = FUNC3(buf, nwords);
		*nbytes = nwords * sizeof(uint64_t);
	} else {
		*nbytes = 0;
	}
}