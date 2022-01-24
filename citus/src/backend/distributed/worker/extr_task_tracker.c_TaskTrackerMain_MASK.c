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
typedef  int /*<<< orphan*/  sigjmp_buf ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_INITSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MAXSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MINSIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int ExitOnAnyError ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/ * PG_exception_stack ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  TaskTrackerTaskHash ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TrackerShutdownHandler ; 
 int /*<<< orphan*/  TrackerSigHupHandler ; 
 int /*<<< orphan*/ * error_context_stack ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int got_SIGHUP ; 
 scalar_t__ got_SIGTERM ; 
 int /*<<< orphan*/  FUNC20 (long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int) ; 

void
FUNC24(Datum main_arg)
{
	MemoryContext TaskTrackerContext = NULL;
	sigjmp_buf local_sigjmp_buf;
	static bool processStartUp = true;

	/* Properly accept or ignore signals the postmaster might send us */
	FUNC21(SIGHUP, TrackerSigHupHandler); /* set flag to read config file */
	FUNC21(SIGTERM, TrackerShutdownHandler); /* request shutdown */

	/* We're now ready to receive signals */
	FUNC3();

	/*
	 * Create a memory context that we will do all our work in.  We do this so
	 * that we can reset the context during error recovery and thereby avoid
	 * possible memory leaks.
	 */
	TaskTrackerContext = FUNC0(TopMemoryContext, "Task Tracker",
													   ALLOCSET_DEFAULT_MINSIZE,
													   ALLOCSET_DEFAULT_INITSIZE,
													   ALLOCSET_DEFAULT_MAXSIZE);
	FUNC10(TaskTrackerContext);

	/*
	 * If an exception is encountered, processing resumes here. The motivation
	 * for this code block is outlined in postgres.c, and the code itself is
	 * heavily based on bgwriter.c.
	 *
	 * In most error scenarios, we will not drop here: the task tracker process
	 * offloads all work to backend processes, and checks the completion of work
	 * through the client executor library. We will therefore only come here if
	 * we have inconsistencies in the shared hash and need to signal an error.
	 */
	if (FUNC23(local_sigjmp_buf, 1) != 0)
	{
		/* Since we are not using PG_TRY, we must reset error stack by hand */
		error_context_stack = NULL;

		/* Prevents interrupts while cleaning up */
		FUNC6();

		/* Report the error to the server log */
		FUNC4();

		/*
		 * These operations are just a minimal subset of AbortTransaction().
		 * We do not have many resources to worry about; we only have a shared
		 * hash and an LWLock guarding that hash.
		 */
		FUNC7();
		FUNC1(false);
		FUNC2(false);

		/*
		 * Now return to normal top-level context, and clear ErrorContext for
		 * next time.
		 */
		FUNC10(TaskTrackerContext);
		FUNC5();

		/* Flush any leaked data in the top-level context */
		FUNC9(TaskTrackerContext);

		/* Now we can allow interrupts again */
		FUNC13();

		/*
		 * Sleep at least 1 second after any error.  A write error is likely to
		 * be repeated, and we don't want to be filling the error logs as fast
		 * as we can.
		 */
		FUNC20(1000000L);
	}

	/* We can now handle ereport(ERROR) */
	PG_exception_stack = &local_sigjmp_buf;

	/*
	 * We run validation and cache cleanup functions as this process is starting
	 * up. If these functions throw an error, we won't try running them again.
	 */
	if (processStartUp)
	{
		processStartUp = false;

		/* clean up old files in the job cache */
		FUNC15();

		/* clean up schemas in the job cache */
		FUNC16();
	}

	/* Loop forever */
	for (;;)
	{
		/*
		 * Emergency bailout if postmaster has died. This is to avoid the
		 * necessity for manual cleanup of all postmaster children.
		 *
		 * XXX: Note that PostgreSQL background processes no longer nap between
		 * their loops, but instead uses latches to wake up when necessary. We
		 * should switch to using latches in here too, and have the task tracker
		 * assign function notify us when there is a new task.
		 */
		if (!FUNC11())
		{
			FUNC19(1);
		}

		/* Process any requests or signals received recently */
		if (got_SIGHUP)
		{
			got_SIGHUP = false;

			/* reload postgres configuration files */
			FUNC12(PGC_SIGHUP);
		}
		if (got_SIGTERM)
		{
			/*
			 * From here on, reporting errors should end with exit(1), and not
			 * send control back to the sigsetjmp block above.
			 */
			ExitOnAnyError = true;

			/* Close open connections to local backends */
			FUNC14(TaskTrackerTaskHash);

			/* Add a sentinel task to the shared hash to mark shutdown */
			FUNC18(TaskTrackerTaskHash);

			/* Normal exit from the task tracker is here */
			FUNC22(0);
		}

		/* Call the function that does the actual work */
		FUNC8(TaskTrackerTaskHash);

		/* Sleep for the configured time */
		FUNC17();
	}
}