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
struct kevent {int /*<<< orphan*/  data; int /*<<< orphan*/  flags; int /*<<< orphan*/  filter; } ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 scalar_t__ errno ; 
 int FUNC2 (int,struct kevent*,int,struct kevent*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout_ms ; 

__attribute__((used)) static void *
FUNC3(void *arg)
{
	int fd = (int)arg;

	struct kevent kev = {
		.filter = EVFILT_TIMER,
		.flags  = EV_ADD,
		.data   = timeout_ms,
	};

	int rv = FUNC2(fd, &kev, 1, NULL, 0, NULL);

	if (rv == -1 && errno == EBADF) {
		/* The close may race with this thread spawning */
		FUNC1("kqueue already closed?");
		return NULL;
	} else {
		T_QUIET; FUNC0(rv, "kevent");
	}

	while ((rv = FUNC2(fd, NULL, 0, &kev, 1, NULL)) == 1) {
		FUNC1("poll\n");
	}

	if (rv != -1 || errno != EBADF) {
		FUNC0(rv, "fd should be closed");
	}

	return NULL;
}