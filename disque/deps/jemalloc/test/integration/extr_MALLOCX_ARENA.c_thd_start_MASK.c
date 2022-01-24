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
typedef  int /*<<< orphan*/  mib ;
typedef  int /*<<< orphan*/  dss_precs ;
typedef  int /*<<< orphan*/  arena_ind ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ have_dss ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t*,size_t*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 

void *
FUNC8(void *arg)
{
	unsigned thread_ind = (unsigned)(uintptr_t)arg;
	unsigned arena_ind;
	void *p;
	size_t sz;

	sz = sizeof(arena_ind);
	FUNC1(FUNC4("arenas.extend", &arena_ind, &sz, NULL, 0), 0,
	    "Error in arenas.extend");

	if (thread_ind % 4 != 3) {
		size_t mib[3];
		size_t miblen = sizeof(mib) / sizeof(size_t);
		const char *dss_precs[] = {"disabled", "primary", "secondary"};
		unsigned prec_ind = thread_ind %
		    (sizeof(dss_precs)/sizeof(char*));
		const char *dss = dss_precs[prec_ind];
		int expected_err = (have_dss || prec_ind == 0) ? 0 : EFAULT;
		FUNC1(FUNC6("arena.0.dss", mib, &miblen), 0,
		    "Error in mallctlnametomib()");
		mib[1] = arena_ind;
		FUNC1(FUNC5(mib, miblen, NULL, NULL, (void *)&dss,
		    sizeof(const char *)), expected_err,
		    "Error in mallctlbymib()");
	}

	p = FUNC7(1, FUNC0(arena_ind));
	FUNC2(p, "Unexpected mallocx() error");
	FUNC3(p, 0);

	return (NULL);
}