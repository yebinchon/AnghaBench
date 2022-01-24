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
struct sigaction {scalar_t__ sa_mask; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int TESTS ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char*) ; 
 char* error ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_signal_handler ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int argc, char **argv) {
	int i;
	uint64_t time1, time2;

	int mode = 0;
	if (argc>1) {
		if (!FUNC5(argv[1], "-h")) {
			FUNC3("Usage: %s <mode>\n", argv[0]);
			FUNC3("\tmode = 0:  test all cases\n");
			FUNC3("\tmode = -1: allocate/deallocate until failure\n");
			FUNC3("\tmode > 0:  run test <tmode>\n");
			FUNC1(0);
		}
		mode=FUNC0(argv[1]);
	}
	
	/* install SIGBUS handler */
	struct sigaction my_sigaction;
	my_sigaction.sa_handler = test_signal_handler;
	my_sigaction.sa_flags = SA_RESTART;
	my_sigaction.sa_mask = 0;
	FUNC4( SIGBUS, &my_sigaction, NULL );
	FUNC4( SIGSEGV, &my_sigaction, NULL );
	
	if (mode>0)		/* one specific test */
		FUNC7(mode-1);

	if (mode==0) {	/* test all cases */
		FUNC3("Running %d tests:\n", TESTS);
		for (i=0; i<TESTS; i++) {
			FUNC7(i);
		}
	}
	if (mode==-1) {	/* alloc/dealloc */
			boolean_t ret;
		do {
			ret = FUNC6(TRUE);
			FUNC3(".");
			FUNC2(stdout);
		} while (ret);
		if (error[0])
			FUNC3 (" (%s)\n", error);
	}
	return 0;
}