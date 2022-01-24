#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int ident; scalar_t__ filter; } ;
struct TYPE_11__ {TYPE_6__ tu_kev; int /*<<< orphan*/  tu_pollevents; } ;
struct TYPE_10__ {int act_fd; } ;
struct TYPE_12__ {int t_testname; scalar_t__ t_nbytes; scalar_t__ t_known_failure; scalar_t__ t_nondeterministic; TYPE_2__ t_union; scalar_t__ t_is_poll_test; scalar_t__ t_want_event; int /*<<< orphan*/  t_n_cleanup_actions; int /*<<< orphan*/  t_cleanup_actions; int /*<<< orphan*/  t_watchfile; scalar_t__ t_file_is_fifo; scalar_t__ t_extra_sleep_hack; TYPE_1__ t_helpthreadact; scalar_t__ t_write_some_data; scalar_t__ t_read_to_end_first; int /*<<< orphan*/  t_n_prep_actions; int /*<<< orphan*/  t_prep_actions; } ;
typedef  TYPE_3__ test_t ;
struct timespec {long member_1; int /*<<< orphan*/  member_0; } ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
struct kevent {int flags; int data; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  evlist ;
struct TYPE_13__ {int act_fd; } ;
typedef  TYPE_4__ action_t ;

/* Variables and functions */
 scalar_t__ EVFILT_READ ; 
 scalar_t__ EVFILT_WRITE ; 
 int EV_ERROR ; 
 int /*<<< orphan*/  NOSLEEP ; 
 int O_RDONLY ; 
 int O_SYMLINK ; 
 int /*<<< orphan*/  T_EXPECTFAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  T_MAYFAIL ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  USLEEP_TIME ; 
 int /*<<< orphan*/  WAIT_TIME ; 
 int /*<<< orphan*/  WRITEFD ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,TYPE_6__*,int,struct kevent*,int,struct timespec*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct kevent*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC12 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_4__*),void*) ; 
 int FUNC14 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int) ; 
 scalar_t__ thread_status ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(test_t *test)
{
	int i, kqfd, filefd = -1, res2, res, cnt, writefd = -1;
	int retval = -1;
	pthread_t thr;
	struct kevent evlist;
	struct timespec ts = {WAIT_TIME, 0l};
	int *status;

	FUNC9(&evlist, 0, sizeof(evlist));
	
	FUNC1("[BEGIN] %s\n", test->t_testname);

	FUNC1(test->t_want_event ? "Expecting an event.\n" : "Not expecting events.\n");
	
	res = FUNC5(test->t_prep_actions, test->t_n_prep_actions, 1);
	
	/* If prep succeeded */
	if (0 == res) {
		/* Create kqueue for kqueue tests*/
		if (!test->t_is_poll_test) {
			if ((kqfd = FUNC8()) == -1) {
				FUNC1("kqueue() failed: %d (%s)\n", errno, FUNC16(errno));
			}
		}
		
		if ((test->t_is_poll_test) || kqfd >= 0) {
			
			/* Open the file we're to monitor.  Fifos get special handling */
			if (test->t_file_is_fifo) {
				filefd = -1;
				FUNC11(test->t_watchfile, &filefd, &writefd);
			} else {
				if ((filefd = FUNC10(test->t_watchfile, O_RDONLY | O_SYMLINK)) == -1) {
					FUNC1("open() of watchfile %s failed: %d (%s)\n", test->t_watchfile,
					      errno, FUNC16(errno));
				}
			}
			
			if (filefd >= 0) {
				FUNC1("Opened file to monitor.\n");
				
				/* 
				 * Fill in the fd to monitor once you know it 
				 * If it's a fifo test, then the helper is definitely going to want the write end.
				 */
				test->t_helpthreadact.act_fd = (writefd >= 0 ? writefd : filefd);
				
				if (test->t_read_to_end_first) {
					FUNC15(filefd);
				} else if (test->t_write_some_data) {
					action_t dowr;
					FUNC6(&dowr, NOSLEEP, WRITEFD, 0);
					dowr.act_fd = writefd;
					(void)FUNC4(&dowr);
				}
				
				/* Helper modifies the file that we're listening on (sleeps first, in general) */
				thread_status = 0;
				res = FUNC13(&thr, NULL, execute_action, (void*) &test->t_helpthreadact);
				if (0 == res) {
					FUNC1("Created helper thread.\n");
					
					/* This is ugly business to hack on filling up a FIFO */
					if (test->t_extra_sleep_hack) {
						FUNC17(USLEEP_TIME);
					}
					
					if (test->t_is_poll_test) {
						struct pollfd pl;
						pl.fd = filefd;
						pl.events = test->t_union.tu_pollevents;
						cnt = FUNC12(&pl, 1, WAIT_TIME);
						FUNC1("Finished poll() call.\n");
						if ((cnt < 0)) {
							FUNC1("error is in errno, %s\n", FUNC16(errno));
							res = cnt;
						}
					} else {
						test->t_union.tu_kev.ident = filefd; 
						cnt = FUNC7(kqfd, &test->t_union.tu_kev, 1, &evlist, 1,  &ts);
						FUNC1("Finished kevent() call.\n");
						
						if ((cnt < 0) || (evlist.flags & EV_ERROR))  {
							FUNC1("kevent() call failed.\n");
							if (cnt < 0) {
								FUNC1("error is in errno, %s\n", FUNC16(errno));
							} else {
								FUNC1("error is in data, %s\n", FUNC16(evlist.data));
							}
							res = cnt;
						}
					}
					
					/* Success only if you've succeeded to this point AND joined AND other thread is happy*/
					status = NULL;
					res2 = FUNC14(thr, (void **)&status);
					if (res2 != 0) {
						FUNC1("Couldn't join helper thread: %d (%s).\n", res2,
							FUNC16(res2));
					} else if (*status) {
						FUNC1("Helper action had result %d\n", *status);
					}
					res = ((res == 0) && (res2 == 0) && (*status == 0)) ? 0 : -1;
				} else {
					FUNC1("Couldn't start thread: %d (%s).\n", res, FUNC16(res));
				}
				
				FUNC3(filefd);
				if (test->t_file_is_fifo) {
					FUNC3(writefd);
				}
			} else {
				FUNC1("Couldn't open test file %s to monitor: %d (%s)\n", test->t_watchfile);
				res = -1;
			}
			if (!test->t_is_poll_test) {
				FUNC3(kqfd);
			}
		} else {
			FUNC1("Couldn't open kqueue.\n");
			res = -1;
		}
	}
	
	/* Cleanup work */
	FUNC5(test->t_cleanup_actions, test->t_n_cleanup_actions, 0);
	
	/* Success if nothing failed and we either received or did not receive event,
	 * as expected 
	 */
	if (0 == res) {
		FUNC1(cnt > 0 ? "Got an event.\n" : "Did not get an event.\n");
		if (((cnt > 0) && (test->t_want_event)) || ((cnt == 0) && (!test->t_want_event))) {
			if ((!test->t_is_poll_test) && (test->t_union.tu_kev.filter == EVFILT_READ || test->t_union.tu_kev.filter == EVFILT_WRITE)
				&& (test->t_nbytes) && (test->t_nbytes != evlist.data)) {
				FUNC1("Read wrong number of bytes available.  Wanted %d, got %d\n", test->t_nbytes, evlist.data);
				retval = -1;
			} else {
				retval = 0;
			}
			
		} else {
			FUNC1("Got unexpected event or lack thereof.\n");
			retval = -1;
		}
	} else {
		FUNC1("Failed to execute test. res = %d\n", res);
		retval = -1;
	}

	if (test->t_nondeterministic) {
		FUNC1("XXX non-deterministic test result = %d (%s)\n", retval,
			(retval == 0) ? "pass" : "fail");
		T_MAYFAIL;
	} else {
		if (test->t_known_failure) {
			// Signal to harness that this test is expected to fail.
			T_EXPECTFAIL;
		}
	}

	if (retval == 0) {
		FUNC2("%s", test->t_testname);
	} else {
		FUNC0("%s", test->t_testname);
	}

	FUNC1("Test %s done with result %d.\n", test->t_testname, retval);
	return (retval);
}