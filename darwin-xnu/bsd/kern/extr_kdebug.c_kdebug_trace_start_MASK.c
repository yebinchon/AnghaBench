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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  kd_events ;
typedef  int /*<<< orphan*/  kd_event_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int KDEBUG_ENABLE_SERIAL ; 
 int KDEBUG_ENABLE_TRACE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  KTRACE_KDEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int kd_early_done ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ kdebug_serial ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

void
FUNC16(unsigned int n_events, const char *filter_desc,
	boolean_t wrapping, boolean_t at_wake)
{
	if (!n_events) {
		kd_early_done = true;
		return;
	}

	FUNC13();

	FUNC3();

	FUNC12(KTRACE_KDEBUG);

	FUNC5(n_events);

	FUNC10("start_kern_tracing");

	if (FUNC4(TRUE)) {
		FUNC15("error from kdbg_reinit, kernel tracing not started\n");
		goto out;
	}

	/*
	 * Wrapping is disabled because boot and wake tracing is interested in
	 * the earliest events, at the expense of later ones.
	 */
	if (!wrapping) {
		uint32_t old1, old2;
		(void)FUNC0(&old1, &old2);
	}

	if (filter_desc && filter_desc[0] != '\0') {
		if (FUNC2(NULL) == KERN_SUCCESS) {
			FUNC7(filter_desc);
			FUNC1();
		}
	}

	/*
	 * Hold off interrupts between getting a thread map and enabling trace
	 * and until the early traces are recorded.
	 */
	boolean_t s = FUNC14(FALSE);

	if (at_wake) {
		FUNC8();
	}

	FUNC6(TRUE, KDEBUG_ENABLE_TRACE | (kdebug_serial ?
	                         KDEBUG_ENABLE_SERIAL : 0));

	if (!at_wake) {
		/*
		 * Transfer all very early events from the static buffer into the real
		 * buffers.
		 */
		FUNC9();
	}

	FUNC14(s);

	FUNC15("kernel tracing started with %u events\n", n_events);

#if KDEBUG_MOJO_TRACE
	if (kdebug_serial) {
		printf("serial output enabled with %lu named events\n",
		sizeof(kd_events)/sizeof(kd_event_t));
	}
#endif /* KDEBUG_MOJO_TRACE */

out:
	FUNC11();
}