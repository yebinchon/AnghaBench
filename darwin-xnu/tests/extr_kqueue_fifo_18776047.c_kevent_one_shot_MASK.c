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
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 int EVFILT_READ ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC4 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timespec*) ; 

void
FUNC5(int kq, int fd, int filter)
{
	int retval             = 0;
	struct timespec t_zero = {0, 0};
	struct kevent kev[1];

	T_QUIET;
	FUNC1(kq, 0, "ensure kq is valid");
	FUNC3("kevent doing ONESHOT %s", filter == EVFILT_READ ? "read" : "write");

	FUNC0(kev, fd, filter, EV_ADD | EV_ONESHOT, 0, 0, NULL);
	retval = FUNC4(kq, kev, 1, NULL, 0, &t_zero);
	T_QUIET;
	FUNC2(retval, "ONESHOT kevent for fd %d, filter %d", fd, filter);
}