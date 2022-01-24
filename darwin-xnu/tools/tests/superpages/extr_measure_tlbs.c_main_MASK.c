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
 int /*<<< orphan*/  FALSE ; 
 int MAX ; 
 int START ; 
 scalar_t__ STEP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

int FUNC3(int argc, char **argv) {
	int kb;
	uint64_t time1, time2, time3, time4;

	int mode;

	FUNC1("; m0 r s; m0 r b; m0 w s; m0 w b; m1 r s; m1 r b; m1 w s; m1 w b; m2 r s; m2 r b; m2 w s; m2 w b\n");
	for (kb=START; kb<MAX; kb+=STEP) {
		FUNC1("%d", kb);
		for (mode=0; mode<=2; mode++) {
			time1=time2=time3=time4=-1;
			time1 = FUNC2(TRUE, mode, 0, kb);	// read super
			time2 = FUNC2(FALSE, mode, 0, kb);	// read base
			time3 = FUNC2(TRUE, mode, 1, kb);	// write super
			time4 = FUNC2(FALSE, mode, 1, kb);	// write base
			FUNC1("; %lld; %lld; %lld; %lld", time1, time2, time3, time4);
			FUNC0(stdout);
		}
		FUNC1("\n");
	}

	return 0;
}